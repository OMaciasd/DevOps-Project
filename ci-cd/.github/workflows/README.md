# 🚀 GitHub Actions Workflow

---

## 📌 Workflow Explanation

- 🏗️ **Build**

  - 📥 Checks out the repository code.

  - 🏗️ Builds the Docker image.

  - 📤 Pushes it to GitHub Container Registry (GHCR).

- 🧪 **Test**

  - 📥 Checks out the repository code.

  - 🔬 Runs unit tests inside containers.

  - 🏗️ Runs integration tests.

- 🛡️ **Security & Code Quality**

  - 🔍 Trivy scans the image for vulnerabilities.

  - 🔎 SonarQube analyzes the code for bugs, errors, and security issues.

- 🚀 **Deploy**

  - 📥 Checks out the repository code.

  - ⚙️ Configures kubectl to connect to the Kubernetes cluster.

  - 🚀 Applies the YAML manifests to deploy the application.

### 💡 Example: GitHub Actions

  ```plaintext
  ci-cd/
    .github/
     workflows/
      ci-cd.yml

  ```

💡 This workflow enables continuous integration and deployment (CI/CD) with GitHub Actions, ensuring quality, security, and automation in the development process.

---

## 🚀 **Ready for production!** 🚀

Let me know if you need any adjustments! 😃

---

## 📚 Learn More

- 📖 [GitHub Actions Documentation](https://docs.github.com/en/actions)
- 📖 [Docker Buildx Documentation](https://docs.docker.com/buildx/working-with-buildx/)
- 📖 [Trivy Security Scanner](https://aquasecurity.github.io/trivy/)
- 📖 [SonarQube Documentation](https://docs.sonarqube.org/latest/)
- 📖 [Kubernetes Deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)

---
