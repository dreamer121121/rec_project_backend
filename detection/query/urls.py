from django.conf.urls import url

from . import  views
urlpatterns = [
    url(r'^api/get/sendMessage$',views.send_message),
    url(r'^api/post/img$',views.postimg),
]