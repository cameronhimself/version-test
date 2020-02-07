#!/bin/bash

BASE_DIR=$(dirname "$0")
CUCUMBER_REPORTS_DIR=$BASE_DIR/../cucumber-reports

mkdir -p $CUCUMBER_REPORTS_DIR
cat > $CUCUMBER_REPORTS_DIR/empty-report.json << EOF
[
  {
    "id": "a-fake-feature",
    "uri": "features/fake.feature",
    "keyword": "Feature",
    "name": "A Fake feature",
    "line": 1,
    "description": "",
    "elements": [
      {
        "keyword": "Scenario",
        "id": "one-passing-scenario,-one-failing-scenario;passing",
        "name": "Passing",
        "line": 5,
        "description": "",
        "type": "scenario",
        "steps": [
          {
            "keyword": "Given ",
            "name": "this step passes",
            "line": 6,
            "match": {
              "location": "features/step_definitions/steps.rb:1"
            },
            "result": {
              "status": "passed",
              "duration": 1
            }
          }
        ]
      }
    ]
  }
]
EOF
