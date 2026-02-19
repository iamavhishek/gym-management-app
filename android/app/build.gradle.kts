plugins {
    id("com.android.application")
    id("kotlin-android")
 //   id("com.google.gms.google-services")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.gym_management_app"
    compileSdk = 36
    ndkVersion = "29.0.14206865"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.gym_management_app"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    flavorDimensions += listOf("app", "env")

    productFlavors {
        // App Dimension
        create("admin") {
            dimension = "app"
            applicationId = "com.gym.admin"
            manifestPlaceholders["appNamePrefix"] = "Gym Admin"
        }
        create("trainer") {
            dimension = "app"
            applicationId = "com.gym.trainer"
            manifestPlaceholders["appNamePrefix"] = "Gym Trainer"
        }
        create("member") {
            dimension = "app"
            applicationId = "com.gym.member"
            manifestPlaceholders["appNamePrefix"] = "Gym Member"
        }

        // Environment Dimension
        create("dev") {
            dimension = "env"
            applicationIdSuffix = ".dev"
            manifestPlaceholders["appNameSuffix"] = " (Dev)"
        }
        create("staging") {
            dimension = "env"
            applicationIdSuffix = ".staging"
            manifestPlaceholders["appNameSuffix"] = " (Staging)"
        }
        create("prod") {
            dimension = "env"
            manifestPlaceholders["appNameSuffix"] = ""
        }
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
    compileSdkMinor = 1
    buildToolsVersion = "36.1.0"
}

flutter {
    source = "../.."
}
