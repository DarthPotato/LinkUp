const { onSchedule } = require("firebase-functions/v2/scheduler");
const { logger } = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.updateGlobalMetricsDaily = onSchedule(
  {
    schedule: "every day 13:50",
    timeZone: "America/New_York",
    region: "us-east1",
  },
  async (event) => {
    const db = admin.firestore();

    const snapshot = await db.collection("metrics_personal").get();

    let totalUsers = 0;

    let promoterCount = 0;
    let detractorCount = 0;
    let npsResponseCount = 0;

    let adoptionTotal = 0;
    let dauTotal = 0;
    let retained7Total = 0;
    let clicksTotal = 0;
    let impressionsTotal = 0;

    const aiTotals = {
      Company_Information: 0,
      Interview_Meeting_Preparation: 0,
      Ask_Interview_Meeting_Questions: 0,
      Email: 0,
      Networking_Preparation: 0,
    };

    snapshot.forEach((doc) => {
      const m = doc.data();
      totalUsers += 1;

      // NPS: promoters = 9-10, detractors = 1-6, passives = 7-8
      if (
        typeof m.nps_score === "number" &&
        m.nps_score >= 1 &&
        m.nps_score <= 10
      ) {
        npsResponseCount += 1;

        if (m.nps_score >= 9) {
          promoterCount += 1;
        } else if (m.nps_score <= 6) {
          detractorCount += 1;
        }
      }

      adoptionTotal += m.adoption_flag ? 1 : 0;
      dauTotal += m.active_today ? 1 : 0;

      const firstActive =
        m.first_active && typeof m.first_active.toDate === "function"
          ? m.first_active.toDate()
          : m.first_active instanceof Date
            ? m.first_active
            : null;

      const lastActive =
        m.last_active && typeof m.last_active.toDate === "function"
          ? m.last_active.toDate()
          : m.last_active instanceof Date
            ? m.last_active
            : null;

      if (firstActive && lastActive) {
        const sevenDaysLater = new Date(firstActive);
        sevenDaysLater.setDate(sevenDaysLater.getDate() + 7);

        if (lastActive >= sevenDaysLater) {
          retained7Total += 1;
        }
      }

      clicksTotal += typeof m.clicks === "number" ? m.clicks : 0;
      impressionsTotal += typeof m.impressions === "number" ? m.impressions : 0;

      const ai = m.ai_counts || {};
      aiTotals.Company_Information += ai.Company_Information || 0;
      aiTotals.Interview_Meeting_Preparation +=
        ai.Interview_Meeting_Preparation || 0;
      aiTotals.Ask_Interview_Meeting_Questions +=
        ai.Ask_Interview_Meeting_Questions || 0;
      aiTotals.Email += ai.Email || 0;
      aiTotals.Networking_Preparation += ai.Networking_Preparation || 0;
    });

    const globalNps =
      npsResponseCount > 0
        ? Number(
            (
              (promoterCount / npsResponseCount -
                detractorCount / npsResponseCount) *
              100
            ).toFixed(2),
          )
        : 0;

    const adoptionRate =
      totalUsers > 0
        ? Number(((adoptionTotal / totalUsers) * 100).toFixed(2))
        : 0;

    const retentionRate =
      totalUsers > 0
        ? Number(((retained7Total / totalUsers) * 100).toFixed(2))
        : 0;

    const ctr =
      impressionsTotal > 0
        ? Number(((clicksTotal / impressionsTotal) * 100).toFixed(2))
        : 0;

    await db.collection("metrics_global").doc("summary").set(
      {
        NPS: globalNps,
        Adoption: adoptionRate,
        DAU: dauTotal,
        Retention: retentionRate,
        CTR: ctr,
        AI_Prompt_Type: aiTotals,
      },
      { merge: true },
    );

    logger.log("Global metrics updated successfully");
  },
);
