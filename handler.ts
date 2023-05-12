import "source-map-support/register";

import { APIGatewayProxyHandler } from "aws-lambda";

export const hello: APIGatewayProxyHandler = async (event, _context) => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message:
          "This code deployed directly from the CI/CD pipeline using GitHub Action and Serverless!",
        httpMethod: event.httpMethod,
      },
      null,
      2
    ),
  };
};