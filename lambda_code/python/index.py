import json
from os import environ


def lambda_handler(event, context):
    # Log the incoming event (helpful for debugging)
    print("Event: ", json.dumps(event, indent=2))
    print("ENVVARS: ", json.dumps(dict(environ), indent=2))

    response = {
        "statusCode": 200,
        "body": json.dumps({
            "message": "Hello from Python Lambda!"
        })
    }

    return response