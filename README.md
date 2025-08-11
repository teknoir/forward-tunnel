# Teknoir Forward Tunnel App
Will let you tunnel through the IoT device.

## Build
```bash
gcloud --project=teknoir-mgmt builds submit . --config=cloudbuild.yaml --timeout=3600
```

## Legacy build and publish docker images
```bash
docker build -t tekn0ir/forward-tunnel:arm64v8 .
docker push tekn0ir/forward-tunnel:arm64v8
```
