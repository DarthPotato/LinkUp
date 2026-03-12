### JACOB MATHEWS
## A/B Test Name:
"Login Page Density — Compact Layout vs Spacious Layout"

## User Story Number:
US2 (User Authentication / Login)

## Metrics (HEART Framework):

- **Happiness:** Reduced frustration signals (rapid clicks, repeated focus changes)
- **Engagement:** Login screen drop-off rate
- **Adoption:** Successful login sessions
- **Retention:** Returning users who log in again within 7 days
- **Task Success:** Login completion rate, time to successful login, login CTA click rate

---

## Hypothesis:

A **more spacious login layout with increased padding and visual breathing room** will improve login completion rates because users will find the interface easier to scan and interact with.

---

## What problem are we trying to solve? Its impact?

### Problem:
Users may feel overwhelmed or rushed when UI elements are tightly packed, especially on mobile devices.

### Bottleneck:
High visual density can reduce readability and slow down user interaction with key elements such as input fields and the login button.

### Impact:
- Slower login task completion  
- Increased hesitation on the login screen  
- Potential early drop-off before authentication  

### Narrowed Hypothesis:
Changing **only the spacing and padding of UI elements** will improve usability and task success.

---

## Experiment (Firebase Setup):

- Use **Firebase Remote Config + Firebase A/B Testing**
- Audience split:
  - 50% Control (compact layout)
  - 50% Variant (spacious layout)

### Firebase Analytics Events to Track:
- `login_screen_view`
- `login_cta_click`
- `login_success`
- `login_abandon`
- `time_to_login_success`

---

## Variations:

### Variation A — Compact Layout (Control)
- Small vertical spacing between fields  
- Standard padding inside form container  
- Login button close to password field  

### Variation B — Spacious Layout (Variant)
- Increased vertical spacing between elements  
- Larger padding around form container  
- More separation between password field and login button  
- Same colors, text, and placement structure  


### Aidan Leach 
# A/B Test Name:
Profile Resume Upload — Upload Enabled vs No Upload

# User Story Number:
US3 (User Profile / Resume)

# Metrics (HEART Framework):

- **Happiness:** Reduced frustration during profile setup
- **Engagement:** Profile page interaction rate
- **Adoption:** Users who upload a resume
- **Retention:** Users who return to their profile within 7 days
- **Task Success:** Resume upload completion rate, profile completion rate, upload button click rate

---

# Hypothesis:

Allowing users to **upload a picture of their resume to Firebase Storage from the profile page** will increase profile completion and engagement because it provides an easy way to add professional information.

---

# What problem are we trying to solve? Its impact?

## Problem:
Users may leave their profile incomplete because there is no simple way to add their resume.

## Bottleneck:
Without a resume upload option, users may skip adding professional details.

## Impact:
- Lower profile completion
- Less engagement with the profile page
- Users abandoning profile setup

## Narrowed Hypothesis:
Adding **only a resume image upload option connected to Firebase Storage** will improve profile completion.

---

# Experiment (Firebase Setup):

- Use **Firebase Remote Config + Firebase A/B Testing**
- Audience split:
  - 50% Control (no resume upload)
  - 50% Variant (resume upload enabled)

## Firebase Analytics Events to Track:
- `profile_page_view`
- `resume_upload_click`
- `resume_upload_success`
- `resume_upload_abandon`

---

# Variations:

## Variation A — No Resume Upload (Control)
- Profile page does not include a resume upload option

Nick Aksanov
A/B Test Name:
"Login Assistance Visibility — Hidden Help vs Visible Help Links"
User Story Number:
US2 (User Authentication / Login)
Metrics (HEART Framework):
Happiness: Reduced frustration signals (rage clicks, repeated password attempts)


Engagement: Interaction with login assistance links


Adoption: Successful login sessions


Retention: Users returning within 7 days after recovering account access


Task Success: Login completion rate, password reset success rate, time to successful login



Hypothesis:
Displaying clear and visible login assistance options (such as “Forgot Password?” and “Need Help Logging In?”) directly on the login screen will increase login completion rates because users who encounter problems will be able to quickly resolve them instead of abandoning the login process.

What problem are we trying to solve? Its impact?
Problem:
Users who forget their passwords or encounter login issues may not immediately notice recovery options, especially if those links are small or placed in less visible areas.
Bottleneck:
When help links are hidden or visually minimized, users may repeatedly attempt to log in unsuccessfully or leave the app entirely.
Impact:
Increased failed login attempts


Higher abandonment rate on the login screen


User frustration due to difficulty locating support options


Narrowed Hypothesis:
Making login assistance links more visible and clearly labeled will improve task success and reduce login abandonment.

Experiment (Firebase Setup):
Use Firebase Remote Config + Firebase A/B Testing


Audience split:


50% Control (standard help visibility)


50% Variant (enhanced help visibility)


Firebase Analytics Events to Track:
login_screen_view


login_cta_click


login_success


forgot_password_click


login_abandon


password_reset_success



Variations:
Variation A — Standard Help Visibility (Control)
“Forgot Password?” link displayed in small text under the password field


No additional assistance messaging


Default styling consistent with current login page


Variation B — Enhanced Help Visibility (Variant)
“Forgot Password?” link displayed in larger text directly below password field


Additional “Need help logging in?” support link


Slightly increased spacing to visually separate assistance links from form inputs


Same login form structure, colors, and button placement as control.


## Variation B — Resume Upload Enabled (Variant)
- Profile page includes an option to upload a resume picture
- Resume image is stored in Firebase Storage

- 




Good, I've got solid context on LinkUp. Here's your A/B test for the color scheme on the sign-up/login page. I'll write it in the same format as your teammates' examples so you can just commit it directly:

Yilmaz
A/B Test Name:
"Sign Up/Login Color Scheme — Professional Blue vs Bold Accent"
User Story Number:
US1 (Account Creation) / US2 (User Authentication / Login)
Metrics (HEART Framework):

Happiness: User satisfaction with the visual design (post-login micro-survey or sentiment signals)
Engagement: Time spent on the sign-up/login screen, interaction rate with form fields
Adoption: Sign-up completion rate for new users
Retention: Return login rate within 7 days
Task Success: Sign-up and login completion rate, CTA button click rate, form abandonment rate


Hypothesis:
A bolder, high-contrast accent color scheme on the sign-up/login page will improve sign-up completion rates because the CTA button and key UI elements will stand out more clearly, reducing hesitation and guiding users through the flow faster.

What problem are we trying to solve? Its impact?
Problem:
The sign-up/login screen is the first impression of LinkUp. If the color scheme doesn't create enough visual hierarchy — particularly around the "Sign Up" and "Log In" buttons — users may hesitate, miss the CTA, or perceive the app as generic and unpolished, leading to drop-off before they ever reach the core features (company briefings, mock interviews, networking prep).
Bottleneck:
If the primary action button doesn't contrast enough with the background and surrounding elements, users scan the page without a clear visual anchor. This is especially a problem on mobile where screen real estate is limited and the CTA needs to pop immediately.
Impact:

Lower sign-up conversion from first-time visitors
Increased time-to-action on the login screen
Higher form abandonment before authentication
Weaker first impression of the app's brand identity

Narrowed Hypothesis:
Changing only the color scheme (background, accent/CTA button color, and text contrast) while keeping layout, spacing, copy, and functionality identical will isolate whether color alone impacts sign-up/login completion.

Experiment (Firebase Setup):

Use Firebase Remote Config + Firebase A/B Testing
Audience split:

50% Control (Variation A)
50% Variant (Variation B)


All users are included in the experiment — since this is the entry point of the app, there's no reason to restrict the audience. Every new and returning user hits this screen, so a full 50/50 split maximizes statistical power and gets us to significance faster.

Firebase Analytics Events to Track:

login_screen_view — tracks impressions of the sign-up/login page
signup_cta_click — tracks taps on the "Sign Up" button
signup_success — tracks completed account creation
login_cta_click — tracks taps on the "Log In" button
login_success — tracks completed logins
signup_abandon — tracks users who viewed the screen but navigated away without completing sign-up
time_on_auth_screen — custom event tracking how long the user spends on the screen before taking action

Rationale:
These events let us measure the full funnel from screen view → CTA click → success/abandon. The time_on_auth_screen metric is important because a bolder color scheme should reduce decision time — if Variation B has a lower average time-to-action with equal or higher completion, that's strong evidence the visual hierarchy is doing its job.

Variations:
Variation A — Professional Blue Theme (Control)

Muted navy/slate background with soft white card container
Light blue CTA buttons with white text
Subtle, professional aesthetic — clean but low contrast between button and background
Standard gray placeholder text in input fields
Same layout, same copy, same field order

Variation B — Bold Accent Theme (Variant)

Same background structure but with a vibrant accent color (e.g., a saturated teal or coral) applied to CTA buttons
Higher contrast ratio between button color and surrounding elements
Input field borders gain a subtle accent-color focus state on tap
Same layout, same copy, same field order, same typography
Only the color palette changes — no structural or content differences
