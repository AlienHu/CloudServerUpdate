rm -rf PG_Cloud_Server 
rm -rf PGServerJs.tar.gz

mv PGServerJs PGServerJs_`date +"%Y-%m-%d"`

echo "PGServer folder moved"

cd pgbuild

git pull
echo "git pull done" 

tar -xvf PGServerJs.tar.gz
echo "extract done"

mv PG_Cloud_Server/PGServerJs ..

cd ..

cd PGServerJs/
echo "npm install start"
npm install
echo "npm install done"

node startServerCloud.js --app $1