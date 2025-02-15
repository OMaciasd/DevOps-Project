# 🔧 Automation & Orchestration 🚀

---

This guide covers how to automate server configuration with **Ansible** and how to combine **Terraform + Ansible** for infrastructure automation.

---

## ⚙️ Using Ansible for Server Configuration

Ansible is an excellent tool for automating server configuration and managing infrastructure as code. Below is a basic **Ansible playbook** to install and configure **Nginx** on a remote server.

### 📜 Example: Ansible Playbook for Nginx

  ```plaintext
  Ansible/
    Playbook.yaml

  ```

- 📌 **What This Playbook Does**:

  - **✅ Installs Nginx** on servers in the web_servers group.

  - **✅ Enables Nginx** to start automatically.

  - **✅ Copies a custom configuration file** from your local machine to the remote server.

  - ✅ **Restarts Nginx** if the configuration file changes.

## ▶️ Running the Playbook

  ```bash
  ansible-playbook -i inventory.ini setup_nginx.yml

  ```

---

### 🏗️ Automating Infrastructure with Terraform & Ansible

You can combine **Terraform** and **Ansible** to provision infrastructure and configure it automatically.

### 📜 Example: Terraform + Ansible

  ```plaintext
  Ansible/
    terraform.tf

  ```

- 📌 **What This Terraform Code Does**:

  - **✅ Creates an AWS EC2 instance** using an Ubuntu AMI.

  - **✅ Uses a local provisioner** to run an **Ansible playbook** and configure the server.

  - **✅ Deploys Nginx automatically** after instance creation.

---

## 📚 Learn More

- 📖 [Ansible Documentation](https://docs.ansible.com/)
- 📖 [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)

---

### Happy Automating! 🚀⚡🎯

**Let me know if you want any tweaks!** 😃🎉

---
