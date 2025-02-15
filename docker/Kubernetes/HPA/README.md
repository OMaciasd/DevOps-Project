# Scalability and High Availability 📈

---

## 🚀 a) Auto Scaling in Kubernetes with HPA

The **Horizontal Pod Autoscaler (HPA)** allows your Kubernetes cluster to adjust the number of pod replicas based on metrics such as CPU or memory usage. Below is an example to auto-scale your pods based on CPU utilization.

### ⚙️ HPA Configuration for a Deployment in Kubernetes

  ```plaintext
  HPA/
    deployment.yml

  ```

This configuration ensures that **myapp-deployment** scales dynamically based on CPU utilization. If the CPU usage exceeds **50%**, Kubernetes will increase the number of replicas up to **10**, but never below **2**.

---

## 🏗️ b) Cluster Autoscaler in Kubernetes

The **Cluster Autoscaler** adjusts the number of nodes in the cluster based on pod requirements. Here’s a basic example of how to install it.

### 📥 Install the Cluster Autoscaler

- 1️⃣ Deploy Cluster Autoscaler
Apply the official Kubernetes Cluster Autoscaler deployment manifest:

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/autoscaler/master/cluster-autoscaler/cloudprovider/aws/examples/cluster-autoscaler-deployment.yaml

```

For **AWS**, you must configure the autoscaler with the necessary credentials to allow it to manage node scaling.

- 2️⃣ Configure Cluster Autoscaler

Modify the deployment parameters to match your cluster infrastructure, such as:

- **Minimum and maximum node limits**
- **Scaling policies**
- **Cloud provider settings**

📜 Example configuration snippet:

```yaml
command:
  - ./cluster-autoscaler
  - --v=4
  - --stderrthreshold=info
  - --cloud-provider=aws
  - --nodes=1:10:your-node-group
```

- 3️⃣ Verify Installation
Check if Cluster Autoscaler is running correctly:

```bash
kubectl get pods -n kube-system | grep cluster-autoscaler
```

Monitor logs to ensure proper functionality:

```bash
kubectl logs -f deployment/cluster-autoscaler -n kube-system
```

---

## 🎯 Benefits

- ✅ Automatically scales up or down based on workload demand.
- ✅ Reduces operational costs by optimizing resource usage.
- ✅ Ensures high availability and performance.

---

## 🌍 c) High Availability in Kubernetes

To achieve **High Availability (HA)** in Kubernetes, ensure that your application is distributed across multiple **Availability Zones (AZs)** or **regions**, which will keep it running even if a node or zone fails.

### 🛡️ Kubernetes Service Configuration Across Multiple Availability Zones

  ```plaintext
  HPA/
    service.yml

  ```

This **Service** configuration ensures that your application remains available across multiple zones, improving fault tolerance and reliability.

---

## 📚 Learn More

- 📖 [Kubernetes HPA Documentation](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)

- 📖 [Cluster Autoscaler Documentation](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler)

- 📖 [High Availability in Kubernetes](https://kubernetes.io/docs/concepts/cluster-administration/high-availability/)

---
