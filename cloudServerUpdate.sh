rm -rf ../PG_Cloud_Server 
rm -rf ../PGServerJs.tar.gz

git pull
echo "git pull done"

cp PGServerJs.tar.gz ../


tar -xvf ../PGServerJs.tar.gz
echo "extract done"

mv ../PGServerJs ../PGServerJs_`date +"%Y-%m-%d"`
echo "PGServer folder moved"

mv ../PG_Cloud_Server/PGServerJs ../
cd ../PGServerJs

echo "npm install start"
npm install
echo "npm install done"

cd ..
node startServerCloud.js --app $1
pm2 status
pm2 logs