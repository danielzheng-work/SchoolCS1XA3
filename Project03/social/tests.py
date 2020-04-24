from django.test import TestCase
from . import models

# Create your tests here.
class SocialTestCase(TestCase):
    def setUp(self):
        case1 = models.UserInfo.objects.create_user_info(username="testcase1", password="case12345!")
        case2 = models.UserInfo.objects.create_user_info(Username="testcase2", password="case23456!")

    def test(self):
        None