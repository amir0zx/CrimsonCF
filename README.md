# CrimsonCF

[English](README.md) | [فارسی](README.fa.md)

**CrimsonCF (CrimsonCloudFlare)** is a fast **Cloudflare IP scanner web app** that tests endpoints using **Layer 4 (TCP handshake)** (not HTTPS), keeps scan history, exports clean newline TXT lists, and generates ready-to-import configs for **Xray-core**, **sing-box**, and **Clash**.

![CrimsonCF web app screenshot](docs/screenshot.png)

If you searched for: **cloudflare ip scanner**, **cloudflare ip range scanner**, **cloudflare tunnel ip scanner**, **warp ip scanner**, **fastest cloudflare ip**, this repo is built for that workflow.

## Features

- **L4 handshake probing** (TCP connect latency + open/closed)
- **Parallel scanning** (configurable concurrency)
- **IP range groups + paging**: CDN / Tunnel / WARP / Custom / All
- **Sources**: fetch ranges from URLs/APIs, presets for Cloudflare official lists
- **Results filters** + capability tags (CDN/Tunnel/WARP/BPB heuristics)
- **Exports**:
  - TXT (one IP per line, real newlines)
  - JSON/XLSX tables
  - Proxy configs: **Xray**, **sing-box**, **Clash (YAML/JSON)**
- **Cloudflare DNS tab**: push fastest IPs into A records automatically (replace mode)

## Quick Start (Docker Compose, recommended)

This runs the UI + probe server in one container.

```bash
docker compose up -d
```

Open:

- `http://localhost:8080`

## Why not HTTPS probes?

Many Cloudflare IPs won’t complete HTTPS the way you expect (SNI/certs/ciphers). CrimsonCF uses **TCP handshake tests** to reliably measure reachability/latency.


## Persian README

- `README.fa.md`

---

Built by `github.com/amir0zx` with help from OpenAI ChatGPT (Codex).
