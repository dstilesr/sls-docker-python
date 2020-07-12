import json


def hello(event, context):
    body = {
        "message": "Hello, world! This is a sample function!"
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response
