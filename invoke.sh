#Invoke chaincode on peers of all Orgs
echo "POST invoke chaincode on peers of Org1 and Org2 and Org3"
echo
TRX_ID=$(curl -s -X POST \
  http://localhost:4000/channels/rxmed/chaincodes/mycc \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NDQwNDQ5NzYsInVzZXJuYW1lIjoiSmltIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1NDQwMDg5NzZ9.aoKdNXcSUh3vF4ZwnolQDCjRA0M7Uc8mGRCCX6lMzJc" \
  -H "content-type: application/json" \
  -d '{
	"peers": ["peer0.org1.rxmed.com","peer0.org2.rxmed.com","peer0.org3.rxmed.com"],
	"fcn":"createPatient",
	"args":["PRESC1","PAT1","xXx1","comp","dos","qty", "68101"]
}')
 echo "Transaction ID is $TRX_ID"