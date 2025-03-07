# Rankings

A production-ready Flutter application demonstrating best practices in mobile app development. Rankings allows users to ask questions about rankings and receive structured ranking results.

---

## Table of Contents
- [Visual Identity](#visual-identity)
- [Setup Instructions](#setup-instructions)
- [Environment Setup and Configuration](#environment-setup-and-configuration)
- [Key Technical Decisions](#key-technical-decisions)
- [Feature Overview and Future Improvements](#feature-overview-and-future-improvements)

---

## Visual Identity
- Color palette:
    - Primary: Material Design theme
    - Secondary: Material Design theme
    - Background: Light/Dark theme based on system settings
    - Text: Dynamic based on theme
- Typography:
    - Using Google Fonts
- Iconography: Hugeicons

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/rankings.git
cd rankings
```

### 2. Prerequisites

- **Flutter SDK**: `>=3.7.0`
- **Dart SDK**: Comes pre-packaged with Flutter.
- **Recommended IDE**: [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

Ensure Flutter is correctly installed by running:

```bash
flutter --version
```

### 3. Initial Project Setup

Navigate to the project directory and run:

```bash
flutter clean
flutter pub get
```

### 4. Install Dependencies

All necessary dependencies are listed in pubspec.yaml. Install them using:

```bash
flutter pub get
```

### 5. Running the App

#### Android

- Ensure an Android emulator is running, or an Android device is connected.
- Run:

  ```bash
  flutter run
  ```

#### iOS

- Ensure Xcode is installed.
- Open the project in Xcode:

  ```bash
  open ios/Runner.xcworkspace
  ```

- Configure signing and capabilities.
- Run:

  ```bash
  flutter run
  ```

---

## Environment Setup and Configuration

### 1. Development Environment
- **IDE**: [Visual Studio Code](https://code.visualstudio.com/) with Flutter and Dart extensions.
- **Flutter Channel**: Stable (`flutter channel stable`).
- **Firebase Project**: Create a new project on the [Firebase Console](https://console.firebase.google.com/).

### 2. Configuration Files
- **`pubspec.yaml`**: Manages project dependencies.
- **`build.yaml`**: Configures code generation for the project.
- **`analysis_options.yaml`**: Static analysis configuration.
- **`.env`**: Contains environment variables.
- **`firebase_options_*.dart`**: Contains Firebase configuration for different environments.
- **`android/app/google-services.json`**: Firebase Android configuration file.
- **`ios/Runner/GoogleService-Info.plist`**: Firebase iOS configuration file.
- **`firebase.json`**: Firebase configuration file.

### 3. Firebase Setup
- **Authentication**: Enable Google Sign-In methods.

## Key Technical Decisions

### 1. Architectural Approach

**Domain-Driven Design**: Organize the app into layers based on business logic and separation of concerns. The app follows a clean architecture with the following layers:

- **Presentation Layer**: UI components and widgets. 
- **Application Layer**: State management and application logic. 
- **Domain Layer**: Business logic and domain models. 
- **Infrastructure Layer**: Data access and external service integration. 

### 2. State Management Strategy

**Riverpod**: Used for state management due to its simplicity, type safety, and versatility.

- **Providers**: Manage state and expose it to the UI.
- **Hooks**: Utilize `flutter_hooks` for managing widget lifecycle.

### 3. Key Libraries and Packages

- **Firebase**: `firebase_core`, `firebase_auth`, `cloud_firestore`.
- **State Management**: `flutter_riverpod`, `hooks_riverpod`.
- **Async Programming**: `fpdart`, `rxdart`.
- **Routing**: `go_router`.
- **UI Components**: Custom `ui_kit` for consistent design.
- **Localization**: App localization using `flutter_localizations` and `intl`.
- **AI Integration**: `openai_dart` for rankings generation.

### 4. Design Patterns Implemented
The app implements several design patterns including:
- **Repository Pattern**: Abstract data access and provide a clean API.
- **Dependency Injection**: Leverage Riverpod providers for injecting dependencies.
- **CQRS Pattern**: Separate query and command operations.

### 5. Rationale Behind Major Technical Choices

- **Domain-Driven Design Architecture**: Ensures a clear separation of concerns and maintainability.
- **Riverpod**: Provides a robust and scalable state management solution without the boilerplate of some alternatives.
- **Freezed**: Implements immutable data models with generated code for equality and serialization.

### 6. Project Structure Overview
The project follows a layer-based structure with separate directories for each layer, with further separation based on features and functionality.

```plaintext
lib/
├── main.dart
├── src/
│   ├── app.dart
│   ├── application/
│   │   ├── authentication/
│   │   ├── rankings/
│   │   ├── warmup/
│   ├── domain/
│   │   ├── authentication/
│   │   ├── core/
│   │   ├── rankings/
│   ├── infrastructure/
│   │   ├── authentication/
│   │   ├── rankings/
│   ├── presentation/
│   │   ├── authentication/
│   │   ├── home/
│   │   ├── routing/
│   │   ├── splash/
│   │   ├── warmup/
│   ├── firebase_options_*.dart
│   └── flavors.dart
├── l10n/
└── ui_kit/
```

### 7. Data Modelling
- **Authentication**: Firebase Authentication for user management.

#### Data Models
- **RankingQuestion**: Represents a question about ranking items.
- **RankedItem**: Represents an item with a rank, title, and optional description and image.
- **RankingResult**: Represents the result of a ranking question with ordered items.

---

## Feature Overview and Future Improvements
### Authentication
Handle user authentication using Firebase Authentication.
- [x] Google Sign-In #739
- [x] Sign-Out

### Rankings
Allow users to ask questions about rankings and view results.
- [x] Ask ranking questions
- [x] Display ranking results
- [x] Display explanations for rankings
- [ ] Share ranking results
- [ ] Save favorite rankings
- [ ] Edit ranking questions

### User Profile
Manage user profile information.
- [x] Display User Profile
- [ ] Update User Preferences
- [ ] View History of Ranking Questions

### Routing
Handle navigation between screens using the GoRouter package.

### Warmup
Preload data for a smooth user experience.

---

### Potential Performance Optimizations

- [ ] **Caching**: Implement caching for ranking results to improve performance.
- [ ] **Pagination**: Load ranking questions and results in batches to reduce initial load times.

### Potential New Integrations or Features
- [ ] **Firebase Cloud Functions**: Use Firebase Cloud Functions for secure backend processing.
- [ ] **Firebase Analytics**: Integrate Firebase Analytics to track user engagement.
- [ ] https://github.com/octo-org/octo-repo/issues/740
- [ ] Add delight to the experience when all tasks are complete :tada:

