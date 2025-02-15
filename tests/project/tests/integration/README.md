# Automated Testing

---

## a) Unit Testing (Python, pytest)

Unit testing is essential to ensure that individual components of your application work as expected. `pytest` is an easy-to-use tool for writing and executing unit tests.

### 🏗 Test Structure

### 🧪 Example of Integration Tests with `pytest` and `requests`

  ```plaintext
  /project
    /tests
      /integration
        test_api.py

  ```

## b) Load Testing (JMeter)

JMeter allows performance and load testing of your application by simulating multiple users and requests.

### ⚙️ JMeter Test Plan Configuration

- Create a **Thread Group** to simulate multiple users.
- Configure an **HTTP Request** to simulate API calls.
- Add a **View Results Tree** to monitor real-time performance.
- Use a **Summary Report** to generate performance metrics post-execution.

📌 **Tip**: You can run JMeter tests from the command line:

```bash
jmeter -n -t test_plan.jmx -l results.jtl
```

This will execute the test plan (`test_plan.jmx`) and save the results in `results.jtl`.

---
