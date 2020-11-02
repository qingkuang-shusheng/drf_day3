#/user/author/yuandongbo
from django.urls import path
from api import views
urlpatterns = [
    # path("book/",views.BookAPIView.as_view()),
    # path("book/<str:id>/",views.BookAPIView.as_view()),
    #
    # path("v2/book/", views.BookAPIViewV2.as_view()),
    # path("v2/book/<str:id>/", views.BookAPIViewV2.as_view()),
    #
    # path("gen/", views.BookGenericAPIView.as_view()),
    # path("gen/<str:id>/", views.BookGenericAPIView.as_view()),

    path("set/", views.UserViewSetView.as_view({"post": "user_login", "get": "get_user_count","put":"user_register"})),
    path("set/<str:id>/", views.UserViewSetView.as_view({"post": "user_login", "get": "get_user_count"})),
]