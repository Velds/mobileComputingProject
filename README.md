# COMP4342 Project Page

This is a **mobile C2C online retail platform** .

*Initial base boilerplate from [bizz84](https://github.com/bizz84/starter_architecture_flutter_firebase), which contains the base version of this project.*

## Motivation

Flutter & Firebase are a great pair for frontend and backend collaboration.

Without a solid architecture, codebases can quickly become hard to test, maintain, and develop. This will severely hamper the development speed, which leads us to using a ready made template for this project. 

Thus, we opted to adopt a refined and a fine-tuned **production-ready** architecture that have been deployed successfully into multiple Flutter & Firebase apps. 

## Installation Guide

// put user guide here

- Create a new project with the Firebase console.
- Add iOS and Android apps in the Firebase project settings.
- On Android, use `com.example.starter_architecture_flutter_firebase` as the package name.
- then, [download and copy](https://firebase.google.com/docs/flutter/setup#configure_an_android_app) `google-services.json` into `android/app`.
- On iOS, use `com.example.starterArchitectureFlutterFirebase` as the bundle ID.
- then, [download and copy](https://firebase.google.com/docs/flutter/setup#configure_an_ios_app) `GoogleService-Info.plist` into `iOS/Runner`, and add it to the Runner target in Xcode.
- finally, enable the Email/Password Authentication Sign-in provider in the Firebase Console (Authentication > Sign-in method > Email/Password > Edit > Enable > Save)

See this page for full instructions:

- [FlutterFire Overview](https://firebase.flutter.dev/docs/overview) 

## Running on Flutter Web

This project now runs on Flutter web.

To test this, add a web app in the Firebase project settings, and export the generated `firebaseConfig` variable inside a `./firebase-config.js` file in your project (this file is included in `.gitignore`). Example:

```js
export var firebaseConfig = {
    apiKey: "<your-api-key>",
    authDomain: "<your-auth-domain>",
    databaseURL: "<your-database-url>",
    projectId: "<your-project-id>",
    storageBucket: "<your-storage-bucket>",
    messagingSenderId: "<your-messaging-sender-id>",
    appId: "<your-app-id>",
    measurementId: "<your-measurement-id>"
};
```

This is then imported in the `index.html` file:

```html
  <script src="./firebase-config.js"></script>

  <!-- https://stackoverflow.com/questions/950087/how-do-i-include-a-javascript-file-in-another-javascript-file -->
  <script type="module">
    // Your web app's Firebase configuration
    import { firebaseConfig } from './firebase-config.js';
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
    firebase.analytics();
  </script>
```

## Packages

- `firebase_auth` for authentication
- `cloud_firestore` for the remote database
- `provider` for dependency injection and propagating stream values down the widget tree
- `rxdart` for combining multiple Firestore collections as needed
- `intl` for currency, date, time formatting
- `mockito` for testing
- `equatable` to reduce boilerplate code in model classes

Also imported from my [flutter_core_packages repo](https://github.com/bizz84/flutter_core_packages):

- `firestore_service`
- `custom_buttons`
- `alert_dialogs`
- `email_password_sign_in_ui`

## References

This project uses templates from [bizz48](https://github.com/bizz84/starter_architecture_flutter_firebase). 


