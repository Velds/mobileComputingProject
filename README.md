# COMP4342 Project Page

This is a **mobile C2C online retail platform** .

*Initial base boilerplate from [bizz84](https://github.com/bizz84/starter_architecture_flutter_firebase), which contains the base version of this project.*

## Motivation

Flutter & Firebase are a great pair for frontend and backend collaboration.

Without a solid architecture, codebases can quickly become hard to test, maintain, and develop. This will severely hamper the development speed, which leads us to using a ready made template for this project. 

Thus, we opted to adopt a refined and a fine-tuned **production-ready** architecture that have been deployed successfully into multiple Flutter & Firebase apps. 

## Installation Guide

### To run on emulators (e.g., AVD)
1. Install necessary dependencies
    - Install flutter SDK and update the system PATH
    - Run flutter doctor 
    - Install android studio
2. Configure Android emulator
    - Enable VM Accelerator for better performance
    - Select pixel 2 Android oreo as emulator
3. Configure VSCode
    - Download the flutter and dart extensions 
    - Run the emulator from the VSCode menu
4. Alternate: Run on Android Studio
    - Download the extension for flutter and dart 
    - Run the emulator from android studio 
5. Run the code
    - Run flutter pub get on the root project folder for dependencies check
    - Run the code in flutter/dart configuration
    - After code is compiled to an APK, the emulator will run the APK automatically

### To run on mobile devices
1. Download the APK
2. Install the APK by clicking on the .apk file (don't forget to allow 3rd party installation) 
3. Look at application list for the app and run it 
