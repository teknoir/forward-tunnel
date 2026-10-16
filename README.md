> **DEPRECATED (2026-10-16).** `forward-tunnel` is part of the legacy SSH tunnel (device `reverse-tunnel` → per-teamspace
> `deadend` SSH bastion, TCP 2222), which is being replaced by WireGuard tunneling
> ([teknoir/wg-tunnel](https://github.com/teknoir/wg-tunnel): wg-hub, wg-agent, wg-gateway; "Tunneling" in the console,
> `tnctl ssh` / `tnctl port-forward`). It stays in use only where WireGuard is not deployed yet (production and the
> airgapped release line) and will be archived after they move. Don't add features; the `:latest` image is frozen
> (platform-applications-gitops `charts/ci/files/repos/forward-tunnel.yaml`).

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
