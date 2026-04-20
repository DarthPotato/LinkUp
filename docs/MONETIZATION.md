# Monetization Plan (Issue 13.3)

## Selected Monetization Techniques

1. **Google AdMob banner ads (required implementation)**
   - Placement: **Tasks screen**, bottom of screen.
   - Goal: Add low-friction ad revenue during active usage.

2. **Premium subscription (planned in Product Backlog)**
   - Offer: ad-free experience + higher AI usage limits + advanced templates.
   - Goal: Convert power users to recurring revenue.

3. **Affiliate partnerships (planned in Product Backlog)**
   - Offer: sponsored resume/interview tools relevant to LinkUp users.
   - Goal: Earn referral revenue from high-intent traffic.

## GitHub Project / PBI Tracking

- Project link (current profile projects page):  
  **https://github.com/users/DarthPotato/projects**
- If the LinkUp board is private or not yet created, replace this with the direct board URL once available.
- Add the following cards to the LinkUp board:
  - **MON-01:** Integrate AdMob Android test banner on Tasks screen (**Current Sprint**)
  - **MON-02:** Define premium tier pricing and feature gates (**Product Backlog**)
  - **MON-03:** Evaluate 3 affiliate partners and referral terms (**Product Backlog**)

## PBI Card Drafts

### MON-01 — AdMob Banner on Tasks Screen (Current Sprint)
**User Story:**  
As a LinkUp user, I can see a non-intrusive banner ad on the Tasks screen so the app can generate ad revenue without interrupting core flows.

**Acceptance Criteria:**
- AdMob is configured for Android in FlutterFlow.
- A test banner loads from Google AdMob on the Tasks screen.
- Banner displays on emulator or real device (not FlutterFlow web preview, Test Mode, or Run Mode).
- Screenshot evidence is added in this repo.

### MON-02 — Premium Subscription Definition (Backlog)
**User Story:**  
As a frequent LinkUp user, I can upgrade to premium for an ad-free and higher-capability experience.

**Acceptance Criteria:**
- Monthly/annual pricing options are defined.
- Premium feature list is documented.
- Upgrade/downsell flow is drafted.

### MON-03 — Affiliate Channel Evaluation (Backlog)
**User Story:**  
As the product team, we can evaluate affiliate tools aligned with user needs to add non-ads revenue.

**Acceptance Criteria:**
- At least 3 partners are compared.
- Commission model + compliance notes are documented.
- Recommendation is prioritized or rejected with rationale.

## AdMob Test Banner Integration Notes (Android)

- Use Google test ad unit ID for banner ads:  
  `ca-app-pub-3940256099942544/6300978111`
- Add AdMob app settings in FlutterFlow (Android app ID + banner placement).
- Place banner widget in Tasks screen layout and keep spacing non-blocking.
- Validate only on Android emulator or physical device.

Reference: https://docs.flutterflow.io/integrations/ads/admob#testing-adbanner

## Screenshot Evidence

- Save screenshot at: `docs/res/admob-banner-android-test.png`
- Expected content: Tasks screen showing loaded Google AdMob test banner from AdMob server.
- Supporting screenshot link provided in issue discussion:  
  https://github.com/user-attachments/assets/654c2e90-73db-43c6-992a-cf4cd3d47692
- Note: this supporting image appears to document the plan text; replace/add with a real emulator/device in-app AdMob banner screenshot to satisfy the full requirement.
