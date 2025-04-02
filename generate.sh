# Generate the Swift client using openapi-generator
echo "Generating Swift client..."
openapi-generator generate \
  -i https://api.safewithapollo.com/api/v1/openapi.yaml \
  -g swift6 \
  -o ./ || { echo "Failed to run openapi-generator. Is it installed? Is the URL accessible?"; exit 1; }

# Check if the generation was successful
if [ $? -eq 0 ]; then
    echo "Swift 6 client generated successfully in $(pwd)"
else
    echo "Error: Failed to generate the Swift 6 client."
    exit 1
fi