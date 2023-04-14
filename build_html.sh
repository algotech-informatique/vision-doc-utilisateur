cd .obsidianhtml
obsidianhtml convert -i config.yaml
cp ./customizations.css output/html/customizations.css
cp ./favicon.ico output/html/favicon.ico
cp ./logo.png output/html/logo.png
cp ./globe-solid.png output/html/globe-solid.png
cp ./linkedin.png output/html/linkedin.png
cp ./square-twitter.png output/html/square-twitter.png
cp ./youtube.png output/html/youtube.png
cp ./magnifying-glass-solid.png output/html/magnifying-glass-solid.png
cp -rf ../Studio/_assets output/html/
mv ./output/html ../html
echo "OK - Export en HTML terminé."
