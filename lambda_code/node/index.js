exports.handler = async (event) => {
  // Log the incoming event (helpful for debugging)
  console.log("Event: ", JSON.stringify(event, null, 2));

  const response = {
      statusCode: 200,
      body: JSON.stringify({
          message: "Hello from Node.js Lambda!"
      }),
  };

  return response;
};