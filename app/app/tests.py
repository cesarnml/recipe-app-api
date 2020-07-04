from django.test import TestCase

from .calc import add, sub


class CalcTests(TestCase):
    def test_add_numbers(self):
        """Test that two numbers are added together."""
        self.assertEqual(add(3, 8), 11)

    def test_subtract_numbers(self):
        """Test that two numbers are subtracted"""
        self.assertEqual(sub(8, 3), 5)
