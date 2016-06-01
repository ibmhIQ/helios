# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('helios', '0002_castvote_cast_ip'),
    ]

    operations = [
        migrations.AddField(
            model_name='voter',
            name='proxy',
            field=models.BooleanField(default=False),
            preserve_default=True,
        ),
    ]
