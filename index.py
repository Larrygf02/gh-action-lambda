
def lambda_handler(event, context):
    print("start function")
    print("end function")
    return {
        'statusCode': 200,
        'body': 'Github action lambda - testing ci/cd - v2'
    }
