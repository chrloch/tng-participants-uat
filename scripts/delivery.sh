mkdir temp
echo $1 > temp/config.json
sed -i "s/'/\"/g" temp/config.json
python scripts/config.py $2 1> /dev/null
python scripts/repo.py 1> /dev/null
./scripts/verify.sh 1> /dev/null
python scripts/onboardingRequest.py
