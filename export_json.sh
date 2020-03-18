# This script export the Website Test skill as a JSON file
if [ ! -f ".env" ]
then
    echo "ERROR: file .env does not exist. Create a .env file with the following parameters:"
    echo "       ASSISTANT_URL"
    echo "       ASSISTANT_USERNAME"
    echo "       ASSISTANT_PASSWORD"
    exit 1
fi

. .env
echo "ASSISTANT_URL=$ASSISTANT_URL"
echo "ASSISTANT_USERNAME=$ASSISTANT_USERNAME"
echo "ASSISTANT_PASSWORD=$ASSISTANT_PASSWORD"
echo "ASSISTANT_URL_V1=$ASSISTANT_URL_V1"
echo "ASSISTANT_URL_V2=$ASSISTANT_URL_V2"
# Export the JSON file ordered
curl -u "$ASSISTANT_USERNAME":"$ASSISTANT_PASSWORD"  "$ASSISTANT_URL_V1?version=2018-09-20&sort=stable&export=true&include_audit=false" > training/tmp.json
# Butify the JSON file
python -m json.tool training/tmp.json > training/skill-San-Patrignano.json
rm -f training/tmp.json
