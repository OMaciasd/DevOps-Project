# 🚀 Integrating SonarCloud with GitHub Actions

---

## 1️⃣ Using SonarCloud in GitHub Actions

SonarCloud can be used in GitHub Actions through a Runner, pipelines, and jobs. To integrate it into your workflow, follow these steps:

  ```plaintext
  ci-cd/
    .github/
     workflows/
      SonarCloud/
        SonarCloud.yml

  ```

### ✅ Requirements

- A **SonarCloud token** stored in GitHub Secrets (`SONAR_TOKEN`).

- A **sonar-project.properties** configuration file.

### 📌 Conclusion

SonarCloud is easy to integrate with GitHub Actions and allows CI/CD analysis **at no cost** for open-source projects.

---

## 📚 Learn More

- 📖 [SonarCloud Documentation](https://sonarcloud.io/documentation)
- 📖 [GitHub Actions Documentation](https://docs.github.com/en/actions)

---
