# Update the sites
for i in $( find -name docker-compose.yml )
do
  echo ""
  ( cd $i && docker compose pull; docker compose up -d --build )
done

