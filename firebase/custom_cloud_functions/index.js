const admin = require("firebase-admin/app");
admin.initializeApp();

const updateGlobalMetricsDaily = require("./update_global_metrics_daily.js");
exports.updateGlobalMetricsDaily =
  updateGlobalMetricsDaily.updateGlobalMetricsDaily;
const resetActiveToday = require("./reset_active_today.js");
exports.resetActiveToday = resetActiveToday.resetActiveToday;
