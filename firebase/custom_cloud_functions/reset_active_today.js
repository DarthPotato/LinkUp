const { onSchedule } = require("firebase-functions/v2/scheduler");
const { logger } = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.resetActiveToday = onSchedule(
  {
    schedule: "every day 00:05",
    timeZone: "America/New_York",
    region: "us-east1",
  },
  async (event) => {
    const db = admin.firestore();

    const snapshot = await db.collection("metrics_personal").get();

    if (snapshot.empty) {
      logger.log("No metrics_personal docs found.");
      return;
    }

    let batch = db.batch();
    let batchCount = 0;
    let updatedDocs = 0;

    for (const doc of snapshot.docs) {
      batch.update(doc.ref, {
        active_today: 0,
      });

      batchCount += 1;
      updatedDocs += 1;

      // Firestore batched writes max out at 500 operations
      if (batchCount === 500) {
        await batch.commit();
        batch = db.batch();
        batchCount = 0;
      }
    }

    if (batchCount > 0) {
      await batch.commit();
    }

    logger.log(`resetActiveToday completed. Updated ${updatedDocs} docs.`);
  },
);
