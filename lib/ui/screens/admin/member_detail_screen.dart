import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/core/blocs/auth/auth_state.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/member_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class MemberDetailScreen extends StatefulWidget {
  final String memberId;

  const MemberDetailScreen({super.key, required this.memberId});

  @override
  State<MemberDetailScreen> createState() => _MemberDetailScreenState();
}

class _MemberDetailScreenState extends State<MemberDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MemberBloc>().add(
      MemberEvent.fetchMemberDetails(widget.memberId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Member Profile',
          style: GoogleFonts.outfit(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.fitness_center),
            tooltip: 'View Workout Plan',
            onPressed: () => context.push(
              '${AppRoutes.adminMembers}/${widget.memberId}/workouts',
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit_note_rounded),
            onPressed: () => context.push(
              '${AppRoutes.adminMembers}/${widget.memberId}/edit',
            ),
          ),
        ],
      ),
      body: BlocBuilder<MemberBloc, MemberState>(
        builder: (context, state) {
          if (state is MemberLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MemberDetailLoaded) {
            return _buildDetailView(state.member);
          } else if (state is MemberError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildDetailView(MemberModel member) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(member),
          const SizedBox(height: 32),

          _buildSectionTitle('Active Membership'),
          _buildPlanCard(member),
          const SizedBox(height: 32),

          _buildSectionTitle('Personal Details'),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: AppTheme.premiumDecoration(),
            child: Column(
              children: [
                _buildInfoRow(
                  Icons.email_outlined,
                  'Email',
                  member.user?.email ?? 'N/A',
                ),
                const Divider(height: 24, thickness: 0.5),
                _buildInfoRow(
                  Icons.phone_outlined,
                  'Phone',
                  member.user?.phone ?? 'N/A',
                ),
                const Divider(height: 24, thickness: 0.5),
                _buildInfoRow(
                  Icons.male_outlined,
                  'Gender',
                  member.user?.gender ?? 'N/A',
                ),
                const Divider(height: 24, thickness: 0.5),
                _buildInfoRow(
                  Icons.cake_outlined,
                  'DOB',
                  member.user?.dateOfBirth ?? 'N/A',
                ),
                const Divider(height: 24, thickness: 0.5),
                _buildInfoRow(
                  Icons.location_on_outlined,
                  'Address',
                  member.user?.address ?? 'N/A',
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          _buildSectionTitle('Physical Profile'),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: AppTheme.premiumDecoration(),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _buildStatItem(
                        'Height',
                        member.height ?? '-',
                        'cm',
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: AppTheme.outlineLight,
                    ),
                    Expanded(
                      child: _buildStatItem(
                        'Weight',
                        member.weight ?? '-',
                        'kg',
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: AppTheme.outlineLight,
                    ),
                    Expanded(
                      child: _buildStatItem('BMI', member.bmi ?? '-', ''),
                    ),
                  ],
                ),
                const Divider(height: 32, thickness: 0.5),
                _buildInfoRow(
                  Icons.bloodtype_outlined,
                  'Blood Group',
                  member.user?.bloodGroup ?? '-',
                ),
                const Divider(height: 24, thickness: 0.5),
                _buildInfoRow(
                  Icons.track_changes_outlined,
                  'Fitness Goal',
                  member.goals ?? 'N/A',
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          _buildSectionTitle('Emergency Contact'),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: AppTheme.premiumDecoration(),
            child: Column(
              children: [
                _buildInfoRow(
                  Icons.person_pin_outlined,
                  'Name',
                  member.user?.emergencyContactName ?? 'N/A',
                ),
                const Divider(height: 24, thickness: 0.5),
                _buildInfoRow(
                  Icons.contact_phone_outlined,
                  'Phone',
                  member.user?.emergencyContactPhone ?? 'N/A',
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),

          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              String? userRole;
              if (state is AuthAuthenticated) {
                userRole = state.user.role;
              }
              final isTrainer = userRole == 'trainer';
              if (!isTrainer) return const SizedBox.shrink();
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: AppTheme.primaryGradiant,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.primaryBlue.withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.push(
                      '${AppRoutes.trainerWorkoutsAdd}/${member.id}',
                    );
                  },
                  icon: const Icon(Icons.add_task, color: Colors.white),
                  label: Text(
                    'Assign Workout Plan',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildHeader(MemberModel member) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppTheme.primaryBlue.withOpacity(0.2),
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 54,
              backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
              backgroundImage: member.user?.profileImage != null
                  ? NetworkImage(member.user!.profileImage!)
                  : null,
              child: member.user?.profileImage == null
                  ? Text(
                      member.user?.firstName[0] ?? 'M',
                      style: GoogleFonts.outfit(
                        fontSize: 44,
                        color: AppTheme.primaryBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '${member.user?.firstName} ${member.user?.lastName}',
            style: GoogleFonts.outfit(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: AppTheme.textMain,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: AppTheme.surfaceLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'ID: ${member.membershipNumber}',
              style: GoogleFonts.inter(
                color: AppTheme.textSecondary,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 16),
      child: Text(
        title,
        style: GoogleFonts.outfit(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppTheme.textMain,
        ),
      ),
    );
  }

  Widget _buildPlanCard(MemberModel member) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue,
        gradient: AppTheme.primaryGradiant,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppTheme.primaryBlue.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            runSpacing: 12,
            children: [
              Text(
                'MEMBERSHIP STATUS',
                style: GoogleFonts.inter(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                ),
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      member.status?.toUpperCase() ?? 'UNKNOWN',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.push(
                      '${AppRoutes.adminMembers}/${member.id}/membership-edit',
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.edit_rounded,
                            color: Colors.white,
                            size: 14,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'EDIT',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(
                        AppRoutes.adminPaymentsRecord,
                        extra: {'memberId': member.id},
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.autorenew_rounded,
                            color: AppTheme.primaryBlue,
                            size: 14,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'RENEW',
                            style: GoogleFonts.inter(
                              color: AppTheme.primaryBlue,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            member.planName ?? 'No Active Plan',
            style: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              _planDetailItem(
                Icons.calendar_today_rounded,
                'Joined',
                member.joinedDate ?? '-',
              ),
              const SizedBox(width: 40),
              _planDetailItem(
                Icons.event_available_rounded,
                'Expires',
                member.expiryDate ?? '-',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _planDetailItem(IconData icon, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 14, color: Colors.white.withOpacity(0.7)),
            const SizedBox(width: 6),
            Text(
              label,
              style: GoogleFonts.inter(
                color: Colors.white.withOpacity(0.7),
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildStatItem(String label, String value, String unit) {
    return Column(
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
            color: AppTheme.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value,
                style: GoogleFonts.outfit(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textMain,
                ),
              ),
              if (unit.isNotEmpty)
                TextSpan(
                  text: ' $unit',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withOpacity(0.08),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 20, color: AppTheme.primaryBlue),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 11,
                  color: AppTheme.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textMain,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
