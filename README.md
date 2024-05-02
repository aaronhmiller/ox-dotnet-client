# ox-se-dotnet-client
For running API jobs

## running the client
Open a shell into the OX API Client container:
`docker run -it --name ox-cli --rm aaronhmiller/ox-client`

Now you're in the API Client and need to set your API Key
`# dotnet oxcli.dll setenv --key YOUR_OX_API_KEY_HERE`

## building the client
docker buildx build --no-cache --platform linux/amd64,linux/arm64 \
 -t <your_docker_hub_account>/ox-client --push .
