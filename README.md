# ox-dotnet-client
For running API jobs

## running the client
Open a shell into the OX API Client container:
`docker run -it --name ox-cli --rm aaronhmiller/ox-client`

Now you're in the API Client. You need to set your API Key and run some queries:
```
dotnet oxcli.dll setenv --key YOUR_OX_API_KEY_HERE`
cd python
python3 python_examp.py getApps
```
Note: the getApps.query.json and getApps.variables.json are found and loaded by the python_examp.py file. Other examples are included and creating other queries and variables are left to you.

The program will complete silently but will create an output file `getApps_response.json` containing the results of the query.

## next steps
Should you want to persist the output, you can mount a volume locally as follows:
`docker run -it -v $(pwd)/data:/data --rm aaronhmiller/ox-client`
Then, simply `cp getApps_response.json /data` and your data will be persisted locally.

## building the client
docker buildx build --no-cache --platform linux/amd64,linux/arm64 \
 -t <your_docker_hub_account>/ox-client --push .
