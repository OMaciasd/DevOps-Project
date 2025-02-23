# 🔗 Connecting Kubernetes Namespaces

## 1️⃣ Understanding Namespace Communication

Namespaces in Kubernetes provide logical isolation of resources within a cluster. However, communication between pods in different namespaces is possible through proper DNS resolution and network policies.

### 🌐 DNS Resolution Between Namespaces

Kubernetes services are registered in the internal DNS with the format:

 ```plaintext
 <service-name>.<namespace>.svc.cluster.local

 ```

For example, if a pod in the `frontend` namespace needs to access a service called `backend` in the production namespace, it should use:

 ```plaintext
 backend.production.svc.cluster.local

 ```

### 🔍 Testing DNS Resolution

To verify the DNS resolution from a pod, run:

 ```bash
 nslookup backend.production.svc.cluster.local

 ```

or use curl to check connectivity:

 ```bash
 curl http://backend.production.svc.cluster.local

 ```

---

## 2️⃣ Controlling Network Traffic with NetworkPolicies

By default, Kubernetes allows communication between all pods across namespaces. However, NetworkPolicies can be used to restrict or allow specific traffic flows.

### 🔧 Creating a NetworkPolicy for Cross-Namespace Communication

Below is an example of a NetworkPolicy that allows incoming traffic from the frontend namespace to the backend namespace:

### 🔒 Enhancing Security with Label-Based Restrictions

To further secure the communication, you can restrict access to specific pods within the backend namespace:

  ```plaintext
  docker/
    Kubernetes/
     NetworkPolicy/
      NetworkPolicy.yml

  ```

This configuration ensures that only pods labeled app: api-backend in the backend namespace can receive traffic on port 80 from the frontend namespace.

- `namespace: default`: The policy applies to the `default` namespace. You can change this value to the specific namespace where you want to apply the policy.

- `podSelector: {}`: Selects all pods in the specified namespace.

- `namespaceSelector: {}`: Allows incoming traffic from any namespace.

---

## 3️⃣ Alternative Methods for Namespace Communication

Apart from DNS and NetworkPolicies, the following methods can be used for inter-namespace communication:

- ✅ **ServiceAccounts + RBAC**: Implement role-based access control for authenticated communication.

- ✅ **Service Mesh (Istio)**: Manage traffic policies and security between services.

- ✅ **ExternalName Services**: Redirect traffic to services outside the namespace or cluster.

---

## 📚 Learn More

- 📖 [Kubernetes Network Policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/)
- 📖 [Kubernetes DNS Service Discovery](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
- 📖 [Istio Service Mesh](https://istio.io/latest/docs/concepts/what-is-istio/)

---
