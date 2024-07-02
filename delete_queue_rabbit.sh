#!/bin/bash
rabbitmqadmin --vhost=sync.devel --username=wisproMQ --password='wisproMQ' -f tsv -q list queues name | while read queue; do rabbitmqadmin --vhost=sync.devel --username=wisproMQ --password='wisproMQ' -q delete queue name=${queue}; done

