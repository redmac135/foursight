import os

if os.environ.get("DJANGO_SETTINGS_MODULE") != "cwsf.settings.production":
    from .development import *
