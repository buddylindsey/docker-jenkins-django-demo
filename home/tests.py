from django.test import TestCase


class ViewTest(TestCase):
    def test_something(self):
        self.assertEqual(1, 1)

    def test_fail(self):
        self.assertEqual(1, 2)
