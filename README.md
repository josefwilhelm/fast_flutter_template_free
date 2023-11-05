# Fast Flutter Template (Free)

This is my take for a simple Flutter template that can be used to start a new project. It includes a few packages that I use in most of my projects, and a few other things that I find useful.

## About me

Hey I'm Joe.

- Built more than 30 Flutter apps
- More than 500 000 downloads

You can find my apps here:

- [Google Play](https://play.google.com/store/apps/developer?id=Josef+Wilhelm+Apps&hl=en&gl=US)
- [App Store](https://apps.apple.com/us/developer/digital-snacks/id1558160555)


And you can find me here:

- [LinkedIn](https://www.linkedin.com/in/joe-wilhelm)


## What's included

- Riverpod
- Dark Mode
- Rate my app
- Settings UI
- Material Theme
- Code generation
- Bottom Navigation
- Logger & Provider Logger
- Navigation with auto_route


## Getting Started

Some code is generated using [build_runner](https://pub.dev/packages/build_runner).

 **Make sure to run before you run the app**:

    flutter pub run build_runner build --delete-conflicting-outputs


### Folder structure
    
I use a `feature first` folder structure. 

For example the dashboard feature is located in `lib/features/dashboard`.

Within this folder you will find the following folders:

- `views` - contains the UI
- `providers` - contains the providers
- `models` - contains the models

`lib/common` contains code that is shared across the app. For example the `widget` folder contains the nav bar and a primary button. 

### State Management

- Riverpod
  - Official documentation https://riverpod.dev/
  - Needs the code generation to be run before used. 
  - The dashboard is a good example of how to use it. 

### Navigation
- auto_route 
  - Official documentation https://pub.dev/packages/auto_route
  - Needs the code generation to be run before used.


### Dark Mode

- A switch is included, however the dark mode won't be persisted. For that you can use the [shared_preferences](https://pub.dev/packages/shared_preferences) package. Or any local database.

<br />

# Whats next?

I'm releasing a complete starter kit for Flutter soon. It will include a lot of useful things like
- Onboarding
- Localizations
- Authentication
- A lot of extensions
- local database (hive)
- Firebase integration
- Global error handling
- Push notification set up 
- CI/CD with Fastlane and Github Actions

Basically you can start building out your features right away. Save 60+ hours of development time.

**Find it here. 100$ for the first 100 customers. https://fastfluttertemplate.com**