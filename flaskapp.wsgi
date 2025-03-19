import sys
import logging

logging.basicConfig(stream=sys.stderr)
sys.path.insert(0, "/var/www/html/web1")
sys.path.insert(0, "/usr/local/lib/python3.7/site-packages/")

from app import app as application