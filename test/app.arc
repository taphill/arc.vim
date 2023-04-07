@app
my-arc-app

@plugins
home/my_plugin
architect/plugin-typescript
dir/my_plugins/the-best-plugin/ever

@http
get /
get /pages
post /pages/:dateID
patch /contact
put /contact
options /contact
head /contact
any /contact
delete /widgets/* # catch all unmatched routes

# verbose custom source:
/weather
  method get
  src custom/source
/foo/:id
  method get
  name foo
/bar
  method post
  name foo

@aws
base-runtime nodejs12.x
apigateway http
runtime ruby
memory 256
timeout 3
concurrency 100
provisionedConcurrency 10
fifo false
region us-west-1
profile work-profile
storage 5000 # in MB
architecture arm64
architecture x86_64
bucket bucket-bucket-s3-bucket
layers layers-layers-idk-layers
layers arn:aws:lambda:us-east-1:764866452798:layer:ghostscript:1
layers
  arn:aws:lambda:us-east-1:764866452798:layer:chrome-aws-lambda:4
  arn:aws:lambda:us-east-1:145266761615:layer:pandoc:1
policies S3CrudPolicy architect-default-policies
policies
  S3CrudPolicy
  architect-default-policies
  policies-architect-default
  architect-policies-default

@events
hit-counter
likes
# verbose custom source:
custom-webhook
  src custom/source

@proxy
testing http://localhost:4000
staging https://qa.example.biz
production https://example.biz

@queues
convert-image
publish-log

@scheduled
daily-update-buddy rate(1 day)
friyay-only cron(0 15 ? * FRI *)
# verbose custom source:
annual-review
  rate 1 year
  src custom/source

@shared
src path/to/code

@static
compression true
fingerprint false
folder ./dist
ignore
  .tar.gz
  tmp
  user
prune true
prefix assets
spa false

@tables
people
  pplID *String
  IDppl *String

cats
  pplID *String
  catID **String
  pplID *Number
  catID **Number
  encrypt true
  PointInTimeRecovery false

fleeting-thoughts
  pplID *String
  expires TTL

@tables-indexes
accounts
  email *String
  projection keys # only project base table and index keys (in this example that would be accountID and email)
  name byEmail
accounts
  created *String
  projection updated lastAccessed # only project base table and index keys plus the updated and lastAccessed attributes
  name byDate

@tables-streams
people
# verbose custom source:
a-named-table-stream
  table people
  src custom/source

@views
get /kittens
get /raccoons

@ws
