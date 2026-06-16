import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("development") {
            dimension = "flavor-type"
            applicationId = "com.example.firebase_cicd.dev"
            resValue(type = "string", name = "app_name", value = "Test Project Dev")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.example.firebase_cicd.staging"
            resValue(type = "string", name = "app_name", value = "Test Project Staging")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.example.firebase_cicd"
            resValue(type = "string", name = "app_name", value = "Test Project")
        }
    }

    buildFeatures.resValues = true
}