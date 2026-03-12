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

## Variation B — Resume Upload Enabled (Variant)
- Profile page includes an option to upload a resume picture
- Resume image is stored in Firebase Storage
