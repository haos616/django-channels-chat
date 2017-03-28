from __future__ import unicode_literals

from django.core.management.base import BaseCommand
from django.db import connections
from django.db.utils import OperationalError


class Command(BaseCommand):

    def handle(self, *args, **options):
        db_conn = connections['default']
        try:
            db_conn.cursor()
        except OperationalError:
            exit(1)
        else:
            exit(0)
