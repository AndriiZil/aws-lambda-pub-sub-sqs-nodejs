exports.handler = (event, context) => {
  console.log('RECEIVED MESSAGE FROM SQS');
  console.log("EVENT: \n" + JSON.stringify(event, null, 2))
  return context.logStreamName
}
