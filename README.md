# NoSQL with Firebase

#### An app to demonstrate how to use a NoSQL database. Shown in a seminar in Database subject from Computer Science course.

### About this app
This app is a simple Todo List that uses Firebase's Firestore as database. If you want to try this app, make sure to add your own `google-services.json` file in `android/app/` folder, and also match the app id in your Firebase project. The app id of mine is `com.pedrolemoz.no_sql_with_firebase`.

With this app, you can add new tasks, check or uncheck and also delete them as you want. The tasks are ordered in a combined way: first, we sort by the value (if the task is checked or not), then we sort by the task name (alphabetically).

### Screenshots

<span>
  <img src="https://i.imgur.com/6LJIuYy.png" width=250/>
  <img src="https://i.imgur.com/PwdLnxt.png" width=250/>
  <img src="https://i.imgur.com/m9gQ5IE.png" width=250/>
</span>

### Technologies used in this project

This app uses the [Flutter framework](https://flutter.dev), which is powered by the [Dart language](https://dart.dev). This app also implements the [Uncle Bob's concept of Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html).

#### Specific Flutter dependencies:
  - Flutter Modular for the modularization, dependency injection and routing (well known in Flutter brazilian community, due its authors, from Flutterando)
  - MobX for State Management (included all the related stuff, such build_runner, mobx_codegen...)
  - Firebase packages (firebase_core and cloud_firestore)
  - Dartz and Equatable to some functional programming features