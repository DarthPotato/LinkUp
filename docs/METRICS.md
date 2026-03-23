https://docs.google.com/presentation/d/1FGtqkUKYlbIVIIfJ2yl2VAFd92pzRUGDebS8hpd8EyE/edit?slide=id.gc8216bd24_20_0#slide=id.gc8216bd24_20_0




NPS

Adoption

DAU

Retention 

CTR for an event on the Golden Path. This is done with Firebase Analytics custom event.


Extra metric tracking - Determine which type of prompt user is using the most (Email, Meeting, Interview, etc)

### Metric 1 (NPS): How to collect - 
Have a user survey screen for users after 3-5 logins with a rating score 1-10 and send to DB to store in metrics table with NPS column. Have a cloud function that generates the NPS score based on all of the user responses.

### Metric 2 (CTR): How to collect -
Track whether users use the core app features after logging in, based on the main flows shown in the wireframe. For example, log Firebase Analytics events when a user creates a new meeting prep and generates a meeting prep. Store these events in the database tied to the user ID and session. Feature adoption rate can then be calculated as the percentage of active users who use at least one core feature, or the percentage who use a specific feature, within a defined time period. A Cloud Function can aggregate these events and write the adoption values into a metrics table.

### Metric 3 (Adoption): How to collect - 
Compare total downloads to number of active users to see the adoption rate. Send data to database


### Metric 4 (WAU): How to collect –
Track Weekly Active Users by logging a user as “active” whenever they perform a meaningful action in the app (e.g., login, creating a meeting prep, using an AI feature, etc.). Use Firebase Analytics to capture these events and associate them with a unique user ID.


### Metric 5 (AI mode usage): How to collect -
To determine which type of prompt user is using the most (Email, Meeting, Interview, etc), every time an AI call is made to do that event, the number will be logged and stored in the metrics table. The different types of AI features will be compared and analyzed to understand what people actually use it for; writing follow-up emails, conducting research, or something else.





