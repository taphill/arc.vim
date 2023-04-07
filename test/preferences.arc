@arc
env false
shared false
views false

@create
autocreate true

@create
templates
  http path/to/template/http.js
  events path/to/template/events.py

@env
testing
  MISSING_VAR
  WEIRD_VAR ONLY-for-testing
  A_TESTING_ENV_VAR something-for-testing
  ANOTHER_VAR only-for-testing

staging
  A_STAGING_ENV_VAR something-for-staging

production
  A_PRODUCTION_ENV_VAR something-for-production

@sandbox
livereload true

@sandbox
ports
  http 4200
  events 4211
  queues 4222
  tables 4255

@sandbox
env staging

@sandbox
useAWS true

@sandbox
no-hydrate true

@sandbox-startup
node scripts/seed_db.js
echo 'hello'
