# 📊 Monitoring & Logging

## 1️⃣ Monitoring Kubernetes with Prometheus

Prometheus is a powerful monitoring solution for Kubernetes clusters. Below is an example of how to deploy Prometheus in Kubernetes.

### 🚀 Deploying Prometheus in Kubernetes

Run the following commands to deploy Prometheus:

```bash
kubectl create -f https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/setup/
kubectl create -f https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/
```

### ⚙️ Configuring Prometheus to Collect Node Metrics

Prometheus can be configured to monitor key metrics such as CPU, memory, and pod resource usage. Modify the configuration files to specify which metrics to collect.

## 2️⃣ Visualizing Metrics with Grafana

Grafana is the ideal tool for visualizing the metrics collected by Prometheus. Follow these steps to set it up:

### 📥 Installing Grafana in Kubernetes

```bash
kubectl apply -f https://raw.githubusercontent.com/grafana/helm-charts/main/charts/grafana/crds/crds.yaml
helm install grafana stable/grafana
```

### 🔗 Configuring Grafana to Use Prometheus

1. Access Grafana (usually at `http://localhost:3000`).
2. Navigate to **Configuration** > **Data Sources** > **Add Data Source**.
3. Select **Prometheus** and configure the Prometheus server URL.

### 📊 Creating Dashboards in Grafana

- Build custom dashboards to monitor CPU, memory, disk usage, and other Kubernetes metrics.
- Use built-in Grafana templates to quickly set up a Kubernetes monitoring panel.

## 3️⃣ Alerts with Prometheus and Grafana

You can configure alerts in Grafana based on the metrics collected by Prometheus.

### ⚠️ Example: Creating an Alert in Grafana

1. Create a new panel displaying a critical metric (e.g., CPU usage).
2. Go to the **Alerts** tab and configure a threshold (e.g., if CPU usage exceeds 80% for 5 minutes).
3. Set up notifications via email, Slack, or other integrations.

---

## 📚 Learn More

- 📖 [Prometheus Documentation](https://prometheus.io/docs/)

- 📖 [Grafana Documentation](https://grafana.com/docs/)

---
