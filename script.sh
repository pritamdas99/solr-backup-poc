#!/bin/bash

set -eo pipefail
set -x

curl -X POST -u ${SOLR_CODE} "http://solr-combined.demo.svc.cluster.local:8983/solr/admin/collections?action=RESTORE&collection=book&location=/var/solr/backup&name=book-backup3&repository=kubedb"