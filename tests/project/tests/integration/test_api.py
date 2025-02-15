import requests


def test_api_status():
    response = requests.get("http://localhost:8000/api/v1/status", timeout=10)
    if response.status_code != 200:
        raise AssertionError(
            f"Expected status code 200, but got {response.status_code}"
        )
    if response.json() != {"status": "ok"}:
        raise AssertionError(
            f"Expected response json {{'status': 'ok'}}, but got "
            f"{response.json()}"
        )
