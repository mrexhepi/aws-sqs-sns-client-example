## AWS SQS & SNS Node.js Client 

## What is this?
Node.js web client that excercises the AWS SNS & SQS functionality

## Screenshots
![Alt text](/screenshots/snsmenu.png?raw=true)
![Alt text](/screenshots/sqsmenu.png?raw=true)

## Contains:
- app.js = main app & webserver. Launch this
- /controllers = HTTP routes and sns/sqs API functionality 
- /config = example aws creds config file and example endpoint override (optional) config file
- /public = stylesheet
- views = main index.ejs
- views/partials = partials for menu navigation, sns and sqs forms 

### SQS Functionality:
- Create SQS queues
- List SQS queues
- Get queue URL
- Get queue attributes
- Send message to queue
- Get (receive) message from queue
- Delete message from queue
- Purge all messages from queue
- Delete queues
- Set queue attributes (namely policy for SNS subcription)

### SNS Functionality:
- Create topics
- Add queue subscription
- Add email subscription
- Send message to topic
- List topics
- Delete topics
- List subscriptions
- Delete subscriptions



## Installation overview
install Node.js: https://nodejs.org/en/


clone the repo and install modules:

```
git clone https://github.com/mrexhepi/aws-sqs-sns-client-localstack-example.git
aws-sqs-sns-client-localstack-example
npm install
```

## AWS Credentials
Copy the configuration details and add your AWS creds.

** please take care and don't commit your creds back to git **
```
cd config
cp aws-config-sample.json aws-config.json
```

## Overrride Amazon SNS/SQS endpoints

If you need to route your request to a proxy, or want to route SQS/SNS requests to a local pseudo AWS service (e.g. goaws or localStack) you can override endopoints by creating a aws-override.json config file:
```
cd config
cp aws-override-sample.json aws-override.json
```
and edit the endpoints


For IAM user, add group policy = AmazonSQSFullAccess, AmazonSNSFullAccess 

## How to run it
run your localstack services:
```
docker-compose up -d
```

run the webserver:

```
node app.js
```

point your browser at the local/remoteIP port 3000 to load the HTML forms, click the SNS/SQS buttons to select the required functionality.

For more information on AWS SNS and SQS:

https://aws.amazon.com/sns/
https://aws.amazon.com/sqs/




Repo origin : https://github.com/ajyounguk/aws-sqs-sns-client

