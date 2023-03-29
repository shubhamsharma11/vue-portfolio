echo "--------------- Npm Build ---------------"
npm run build
cd dist
echo "--------------- Git Config ---------------"
git config --global user.email "shubham.sharma.17@outlook.com"
git config --global user.name "Shubham Sharma"
echo "--------------- Add Origin ---------------"
git remote -v
git remote rm origin
git remote -v
git remote add origin https://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@github.com/shubhamsharma11/shubhamsharma11.github.io.git
git remote -v
echo "--------------- Git Initialize ---------------"
git init
echo "--------------- Set Branch ---------------"
git branch -M main
echo "--------------- Stage Changes ---------------"
git add -A
echo "--------------- Commit Changes ---------------"
git commit -m "deploy"
echo "--------------- Push Changes ---------------"
git push -f -u origin main