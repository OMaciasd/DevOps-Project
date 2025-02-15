# 🛡️ Container Vulnerability Scanning (Anchore, Trivy)

---

## 🔍 Overview

Container vulnerability scanning helps detect security risks in container images before deployment. This guide covers using **Trivy** and **Anchore** to scan Docker images.

## 📌 Installing Trivy

Trivy is a simple and fast vulnerability scanner for containers:

```bash
# Install Trivy (Linux/macOS)
brew install aquasecurity/trivy/trivy  # macOS
sudo apt install -y trivy              # Debian/Ubuntu
```

For other OS versions, refer to the [Trivy installation guide](https://aquasecurity.github.io/trivy/).

## 🔎 Scanning a Docker Image with Trivy

Run the following command to scan a Docker image:

```bash
trivy image myregistry/myapp:v1
```

### Example Output

```plaintext
myregistry/myapp:v1 (alpine 3.14)
=================================

Total: 15 (HIGH: 3, MEDIUM: 7, LOW: 5)
```

## ⚙️ Installing Anchore

Anchore provides in-depth security analysis for container images:

```bash
# Install Anchore CLI
pip install anchorecli

# Set environment variables
export ANCHORE_CLI_URL=http://anchore-engine:8228/v1
export ANCHORE_CLI_USER=admin
export ANCHORE_CLI_PASS=foobar
```

## 🏗️ Scanning an Image with Anchore

1. Add an image to the Anchore database:

   ```bash
   anchore-cli image add myregistry/myapp:v1
   ```

2. Trigger a vulnerability scan:

   ```bash
   anchore-cli image vuln myregistry/myapp:v1 all
   ```

- Example Output

  ```plaintext
  Vulnerability ID   Package      Severity  Fix Available
  CVE-2021-1234     libssl       High      Yes
  CVE-2022-5678     busybox      Medium    No
  ```

## 📊 Integrating with CI/CD

You can integrate Trivy or Anchore into your CI/CD pipelines to automate security scans before deployment.

For example, using **GitHub Actions**:

  ```plaintext
  Scans/
    Trivy.yaml

  ```

---

## 🎯 Conclusion

Both **Trivy** and **Anchore** provide valuable insights into container security. Use them as part of your DevSecOps strategy to mitigate security risks before deployment.

---
