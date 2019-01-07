rm -rf ../PG_Cloud_Server 
rm -rf ../PGServerJs.tar.gz
git pull
echo "git pull done"
cp ./$1/PGServerJs.tar.gz ../
cd ..
tar -xvf PGServerJs.tar.gz
echo "extract done"
mv ./PGServerJs ./PGServerJs_`date +"%Y-%m-%d"`
echo "PGServer folder moved"
mv ./PG_Cloud_Server/PGServerJs ./
cd PGServerJs
echo "npm install start"
rm package-lock.json
npm install
echo "npm install done"
node startServerCloud.js --app $1
pm2 status
pm2 logs
