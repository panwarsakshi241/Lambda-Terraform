import json

def lambda_handler(event, context):
    print("This is the test terraform lambda function!")
    print("Change in feature branch!!!!")
    print("need to create pull request for dev01 branch!!!!")
    return {
            'statusCode': 200,
            'body': json.dumps('Hello from Lambda!')
        }