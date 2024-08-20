modules=("eureka-server" "data-movie-service" "external-movie-service" "gateway-api")

for module in "${modules[@]}"; do
  (cd "$module" && mvn package)
done

for module in "${modules[@]}"; do
  java -jar "$module/target/${module}-0.0.1-SNAPSHOT.jar"
done