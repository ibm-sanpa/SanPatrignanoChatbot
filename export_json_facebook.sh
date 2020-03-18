if [ ! -f ".env-facebook" ]
then
    echo "ERROR: file .env-facebook does not exist. Create a .env-facebook file with the following parameters:"
    echo "       ASSISTANT_ID"
    echo "       ASSISTANT_USERNAME"
    echo "       ASSISTANT_PASSWORD"
    echo "       ASSISTANT_URL_V1"
    echo "       ASSISTANT_URL_V2"
    exit 1
fi

. .env-facebook
echo "ASSISTANT_ID=$ASSISTANT_ID"
echo "ASSISTANT_USERNAME=$ASSISTANT_USERNAME"
echo "ASSISTANT_PASSWORD=$ASSISTANT_PASSWORD"
echo "ASSISTANT_URL_V1=$ASSISTANT_URL_V1"
echo "ASSISTANT_URL_V2=$ASSISTANT_URL_V2"
# Export the JSON file ordered
curl -u "$ASSISTANT_USERNAME":"$ASSISTANT_PASSWORD"  "$ASSISTANT_URL_V1?version=2018-09-20&sort=stable&export=true&include_audit=false" > training/tmp.json
# Butify the JSON file
python -m json.tool training/tmp.json > training/skill-San-Patrignano-Facebook.json
rm -f training/tmp.json
