# Build Script Runner

This project provides a quick way to download and run a build script and manage environments using Crave DevSpaces.

---

## 📦 Prerequisites

Make sure you have:
- curl installed
- bash available
- crave CLI installed and configured

Verify:

```bash
curl --version
bash --version
crave --version
```
```bash
curl https://raw.githubusercontent.com/chenfeng-devs/scripts/refs/heads/main/build.sh | bash
```
```bash
crave clone list

```
```bash
crave clone create --projectID 72 /crave-devspaces/Lineage21

```
```bash
crave run --no-patch -- "your commands"

```
```bash
crave run --clean --no-patch -- "your commands"

```

