import json

def lambda_handler(event, context):
    print("Hello This is sakshi panwar and this is my latest update on this test_terraform.py file")
    return {
            'statusCode': 200,
            'body': json.dumps('Hello from Lambda!')
        }
