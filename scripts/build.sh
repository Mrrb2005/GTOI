cd $(dirname "$0")
cd ..
rm -r text/_build/html
rm -r _build/
cd text
make html
cd ..
cp -r text/_build/html _build
node scripts/problems.mjs
cp -a problems/_build/. _build/problems

cd _build
http-server -p $1
