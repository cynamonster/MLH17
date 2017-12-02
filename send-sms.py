from twilio.rest import Client

# Your Account SID from twilio.com/console
account_sid = "AC135dc4ef3302934dcb108df301808a85"
# Your Auth Token from twilio.com/console
auth_token  = "b8eebde289cd892f48ca5ef4628567bb"

client = Client(account_sid, auth_token)

message = client.messages.create(
    to="+17863905608", 
    from_="+18506296721",
    body="Hello from Domi!!!")

print(message.sid)
