if [ ! -f ".env" ]
then
    echo "ERROR: file .env does not exist. Create a .env file with the following parameters:"
    echo "       ASSISTANT_URL_V1"
    echo "       ASSISTANT_URL"
    echo "       ASSISTANT_USERNAME"
    echo "       ASSISTANT_PASSWORD"
    exit 1
fi

. .env
echo $ASSISTANT_URL_V1
echo $ASSISTANT_USERNAME
echo $ASSISTANT_PASSWORD
curl -H "Content-Type: application/json" -k -X get -u "$ASSISTANT_USERNAME":"$ASSISTANT_PASSWORD"  "$ASSISTANT_URL_V1?version=2018-02-16&sort=stable&export=true&include_audit=false" > training/tmp.json
python -m json.tool training/tmp.json > training/skill-San-Patrignano-tmp.json
rm -f training/tmp.json
