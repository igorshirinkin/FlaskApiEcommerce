import unittest
from app import app

class BasicTests(unittest.TestCase):
    """
    Basic test to respond server code
    """
    @classmethod
    def setUp(self):
        print("==> Setting up the env for tests")
        app.config["TESTING"] = True
        app.config["DEBUG"] = False
        app.config['SERVER_NAME'] = 'localhost:5000'
        app.config = app.secret_key
        self.app = app.test_client()

    @classmethod
    def tearDown(self):
        print("==>Tearning down after tests")

    def test_root(self):
        response = self.app.get("/", follow_redirects=True)
        assert "200 OK" == response.status
        assert "Web API Development with Flask" in response.data

if __name__ == "__main__":
    unittest.main()