from django.urls import path, include
from . import views
from rest_framework.routers import DefaultRouter
from rest_framework.authtoken.views import obtain_auth_token

router = DefaultRouter()
router.register("vacancy", views.VacanciesViewSet, basename="vacancy")
router.register("technology", views.TechnologyViewSet, basename="technology")
router.register("channel", views.ChannelViewSet, basename="channel")
router.register("role", views.RoleViewSet, basename="role")
router.register("location", views.LocationViewSet, basename="location")
# router.register("search", views.VacancyGlobalFieldSearch, basename="search") - добавлен в VacanciesVeiwSet

urlpatterns = [path('', include(router.urls)),
               path('api-token-auth', obtain_auth_token, name="api_token_auth")]
