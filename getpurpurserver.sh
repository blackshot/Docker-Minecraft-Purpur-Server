# original script by https://github.com/astorks/PaperMC.sh/blob/master/papermc.sh

PURPUR_VERSION=$1
LATEST_BUILD=$(curl -s "https://api.purpurmc.org/v2/purpur/${PURPUR_VERSION}" | jq '.builds.latest|tonumber')
echo -----------------
echo $PURPUR_VERSION#$LATEST_BUILD
echo -----------------
PURPUR_DOWNLOAD_URL="https://api.purpurmc.org/v2/purpur/${PURPUR_VERSION}/latest/download"
curl -s -o purpurclip.jar ${PURPUR_DOWNLOAD_URL}