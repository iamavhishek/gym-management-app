import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/core/blocs/auth/auth_event.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/member_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _editing = false;

  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _goalsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<MemberBloc>().add(const MemberEvent.profileStarted());
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _goalsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          if (!_editing)
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => setState(() => _editing = true),
            ),
        ],
      ),
      body: BlocConsumer<MemberBloc, MemberState>(
        listener: (context, state) {
          if (state is MemberProfileLoaded) {
            final profile = state.profile;
            _phoneController.text = profile.user?.phone ?? '';
            _heightController.text = profile.height ?? '';
            _weightController.text = profile.weight ?? '';
            _goalsController.text = profile.goals ?? '';
          } else if (state is MemberUpdateSuccess) {
            setState(() => _editing = false);
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
            if (state.profile != null) {
              final profile = state.profile!;
              _phoneController.text = profile.user?.phone ?? '';
              _heightController.text = profile.height ?? '';
              _weightController.text = profile.weight ?? '';
              _goalsController.text = profile.goals ?? '';
            }
          } else if (state is MemberError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${state.message}'),
                backgroundColor: const Color(0xFFEF4444),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is MemberLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MemberProfileLoaded) {
            return _buildContent(state.profile);
          } else if (state is MemberUpdateSuccess) {
            return state.profile != null
                ? _buildContent(state.profile!)
                : const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildContent(MemberModel profile) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            _buildProfileHeader(profile),
            const SizedBox(height: 24),
            _buildInfoSection(profile),
            const SizedBox(height: 24),
            _buildBodyMetrics(profile),
            const SizedBox(height: 24),
            _buildGoalsSection(profile),
            const SizedBox(height: 24),
            if (_editing) _buildSaveButton(),
            const SizedBox(height: 16),
            _buildLogoutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(MemberModel profile) {
    final firstName = profile.user?.firstName ?? 'Member';
    final lastName = profile.user?.lastName ?? '';
    final initials =
        '${firstName.isNotEmpty ? firstName[0] : ''}${lastName.isNotEmpty ? lastName[0] : ''}';

    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: AppTheme.primaryBlue,
          child: Text(
            initials.toUpperCase(),
            style: GoogleFonts.outfit(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          '$firstName $lastName',
          style: GoogleFonts.outfit(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryDark,
          ),
        ),
        Text(
          profile.membershipNumber,
          style: GoogleFonts.inter(
            color: AppTheme.textSecondary,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoSection(MemberModel profile) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Information',
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
          ),
          const SizedBox(height: 12),
          _buildInfoRow(Icons.email, 'Email', profile.user?.email ?? 'N/A'),
          if (_editing)
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
              keyboardType: TextInputType.phone,
            )
          else
            _buildInfoRow(
              Icons.phone,
              'Phone',
              profile.user?.phone ?? 'Not set',
            ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: AppTheme.textSecondary),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: AppTheme.textSecondary,
                ),
              ),
              Text(
                value,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textMain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBodyMetrics(MemberModel profile) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Body Metrics',
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _editing
                    ? TextFormField(
                        controller: _heightController,
                        decoration: const InputDecoration(
                          labelText: 'Height (cm)',
                        ),
                        keyboardType: TextInputType.number,
                      )
                    : _buildMetricCard(
                        'Height',
                        '${profile.height ?? 'N/A'} cm',
                      ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _editing
                    ? TextFormField(
                        controller: _weightController,
                        decoration: const InputDecoration(
                          labelText: 'Weight (kg)',
                        ),
                        keyboardType: TextInputType.number,
                      )
                    : _buildMetricCard(
                        'Weight',
                        '${profile.weight ?? 'N/A'} kg',
                      ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildMetricCard('BMI', profile.bmi ?? 'N/A'),
        ],
      ),
    );
  }

  Widget _buildMetricCard(String label, String value) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.surfaceLight,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppTheme.textSecondary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoalsSection(MemberModel profile) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fitness Goals',
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
          ),
          const SizedBox(height: 12),
          if (_editing)
            TextFormField(
              controller: _goalsController,
              decoration: const InputDecoration(
                hintText: 'Enter your fitness goals',
              ),
              maxLines: 3,
            )
          else
            Text(
              profile.goals ?? 'No goals set',
              style: GoogleFonts.inter(
                color: AppTheme.textMain,
                fontSize: 14,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSaveButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.read<MemberBloc>().add(
            MemberEvent.updateProfile(
              phone: _phoneController.text,
              height: _heightController.text,
              weight: _weightController.text,
              goals: _goalsController.text,
            ),
          );
        },
        child: const Text('Save Changes'),
      ),
    );
  }

  Widget _buildLogoutButton() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEvent.logout());
          Navigator.pushReplacementNamed(context, AppRoutes.login);
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFFEF4444),
          side: const BorderSide(color: Color(0xFFEF4444)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: const Text('Logout'),
      ),
    );
  }
}
