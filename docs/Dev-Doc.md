# LinkUp Developer Documentation (FlutterFlow App)

## Overview

LinkUp is a FlutterFlow-generated Flutter application focused on AI-assisted professional preparation workflows.  
The app currently lives in the `flutterflow` line of development and this branch reflects that modern app structure.

Primary user capabilities:
- Create/sign in to an account
- Manage a personal profile (name, career interest, resume/photo metadata)
- Generate and review **Professional Prep** outputs
- Generate and review **Email Prep** outputs
- Submit an NPS rating

## Technology Stack

- **Frontend:** Flutter (Dart), generated with FlutterFlow
- **Routing:** `go_router`
- **Backend services:** Firebase
  - Authentication
  - Cloud Firestore
  - Storage
  - Analytics / Performance
  - Remote Config
  - Cloud Functions integration hooks
- **AI provider:** Firebase Vertex AI (`firebase_vertexai`, Gemini via `ChatManager`)

## High-Level Architecture

- `lib/main.dart` initializes Firebase and Remote Config, then boots `MaterialApp.router`.
- Auth/session state is handled through `auth/firebase_auth/*` and `AppStateNotifier`.
- App routes are defined in `lib/flutter_flow/nav/nav.dart`.
- Feature pages:
  - `AiPage` (dashboard)
  - `BaseMeetingPrep` (professional prep history + creation flow)
  - `Email` (email prep history + creation flow)
  - `ExpandedMeeting` / `ExpandedEmail` (full generated response views)
  - `Profile`
  - `NPSQuestion`
  - `SignupLogin`

## Firestore Data Model

Collections currently modeled in code:
- `users`
  - `email`, `display_name`, `photo_url`, `uid`, `created_time`, `phone_number`, `career_interest`, `resume`
- `responses`
  - `type`, `short_description`, `response`, `user`, `time`
- `metrics_personal`
  - Per-user engagement and quality metrics (`adoption_flag`, `active_today`, `first_active`, `last_active`, `clicks`, `impressions`, `logins`, `nps_score`, `ai_counts`)
- `metrics_global`
  - Aggregated KPI fields (`NPS`, `Adoption`, `DAU`, `Retention`, `CTR`, `AI_Prompt_Type`)

## AI Flow

AI requests are issued through `callAiAgent(...)` in `lib/backend/ai_agents/ai_agent.dart`.

- Current supported provider path: `GOOGLE`
- Backend AI client: `lib/backend/ai_agents/firebase_vertexai_agent.dart`
- Supports text-first prompts plus optional image/audio/video/pdf attachments
- Responses can be plain text, markdown, or JSON depending on configured response options
- Generated outputs are persisted into `responses` and displayed through prep list/detail screens

## Authentication

Authentication is managed with Firebase Auth and includes support in code for:
- Email/password
- Google
- Apple
- GitHub
- Phone and custom token pathways (via auth manager utilities)

## Metrics & Instrumentation

- Screen and interaction events are logged through generated `logFirebaseEvent(...)` calls.
- `metrics_personal` values are updated in feature flows (for example impressions and NPS score updates).
- Cloud Function response models are defined for scheduled/global metric operations.

## Local Development Notes

From repo root:

- Run integration tests on connected device:
  - `flutter test integration_test/test.dart`
- Run web integration flow:
  - `chromedriver --port=4444`
  - `flutter drive --driver=test_driver/integration_test.dart --target=integration_test/test.dart -d chrome`

---

If this page is copied into the GitHub Wiki, use page title/slug **Dev-Doc** to align with existing wiki navigation.
