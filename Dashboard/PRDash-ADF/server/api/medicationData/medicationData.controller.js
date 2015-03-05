/**
 * Using Rails-like standard naming convention for endpoints.
 * GET     /things              ->  index
 * POST    /things              ->  create
 * GET     /things/:id          ->  show
 * PUT     /things/:id          ->  update
 * DELETE  /things/:id          ->  destroy
 */

'use strict';

var _ = require('lodash');

// Get list of things
exports.index = function(req, res) {
  res.header("content-type: application/json");
  console.log("----MedicationDataAPI");
  var data = '[{"ReachID": 1, "Active": 1, "RxID": 1, "Name": "Prescription 1", "Dosage": "100mg"}, {"ReachID": 1, "Active": 0, "RxID": 2, "Name": "Prescription 2","Dosage": "200mg"}, {"ReachID": 1, "Active": 1, "RxID": 3, "Name": "Prescription 3","Dosage": "300mg"}, {"ReachID": 1, "Active": 1, "RxID": 4, "Name": "Prescription 4","Dosage": "400mg"}, {"ReachID": 1, "Active": 0, "RxID": 5, "Name": "Prescription 5","Dosage": "500mg"}]';

  res.send(JSON.parse(data));
};