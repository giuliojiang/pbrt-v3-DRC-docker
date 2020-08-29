rm -rfv bin
rm -rfv bgreen
cp -R ../../pbrt-v3-IILE bin
cp -R ../supplementary/bathroom_green bgreen
npm ci --prefix applocal/server
docker build --no-cache -t giuliojiang/drc:v0 .