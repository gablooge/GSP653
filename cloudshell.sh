git clone https://github.com/gablooge/GSP653.git
cd GSP653/website

export PROJECT_ID=$(gcloud info --format='value(config.project)')
export API_KEY=YOUR_API_KEY
export YOUR_CLIENT_ID=YOUR_CLIENT_ID


sed -i "s/YOUR_API_KEY/$API_KEY/g" index.html
sed -i "s/YOUR_PROJECT_ID/$PROJECT_ID/g" index.html
sed -i "s/YOUR_CLIENT_ID/$YOUR_CLIENT_ID/g" index.html

python -m SimpleHTTPServer 8080

