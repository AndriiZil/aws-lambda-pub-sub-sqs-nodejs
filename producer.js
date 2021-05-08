const AWS = require('aws-sdk');

const AWS_ACCOUNT_ID = process.env.AWS_ACCOUNT_ID;
const AWS_SQS_QUEUE_NAME = process.env.AWS_SQS_QUEUE_NAME;
const AWS_REGION = process.env.AWS_REGION;

const QUEUE_URL = `https://sqs.eu-central-1.amazonaws.com/${AWS_ACCOUNT_ID}/${AWS_SQS_QUEUE_NAME}`;
const sqs = new AWS.SQS({ region : AWS_REGION });

exports.handler = (event, context) => {
  const params = {
    MessageBody: JSON.stringify(event),
    QueueUrl: QUEUE_URL
  };

  sqs.sendMessage(params, (err,data) => {
    if (err) {
      console.log('error:',"Fail Send Message" + err);
      context.done('error', "ERROR Put SQS");
    } else {
      console.log('data:', data.MessageId);
      context.done(null, {
        statusCode: 200,
        message: 'Message was sent'
      });
    }
  });
}
