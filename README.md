# flavor_app

A new Flutter project.

## Getting Started

1. ## Create the different main files for different flavors

## example

- main_development.dart
- main_production.dart

2. ## In Run and Debug create launch.json, which can be found in after creating in .vscode folder

## example

{
"name": "production",
"request": "launch",
"type": "dart",
"program": "lib/main_production.dart",
"args": ["--flavor", "production", "--target", "lib/main_production.dart"]
}

3. ## In app/build.gradle add different flavors

## example

flavorDimensions "app"
productFlavors {

        production {
            dimension "app"
            applicationId "com.production.flavor_app.prod"
            versionCode 1
            versionName "1.0"
        }

        development {
            dimension "app"
            applicationId "com.development.flavor_app.dev"
            versionCode 1
            versionName "1.0"
        }
    }

4.  ## In app/src add different folders for different flavors

    ## example

    - debug folder (by default)
    - main folder (by default)
    - profile folder (by default)

    - development/res/values/strings.xml add this code

      ```xml
       <?xml version="1.0" encoding="utf-8"?>
      <resources>
          <string name="app_name">Development App</string>
      </resources>
      ```

    - production/res/values/strings.xml add this code

          ```xml

       <?xml version="1.0" encoding="utf-8"?>
      <resources>
          <string name="app_name">Production App</string>
      </resources>

5.  ## In app/src/main/AndroidManifest.xml change this

    - android:label="@string/app_name"

6.  ## In app/src/main/res/values/ add strings.xml file

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <resources>
       <string name="app_name">Default App Name</string>
    </resources>
    ```
