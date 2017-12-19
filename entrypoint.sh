#!/usr/bin/env bash

if ! python3 -c 'import aiohttp' 2> /dev/null; then
	pip install -r requirements.txt
fi

if ! python3 -c 'import elasticsearch_async' 2> /dev/null; then
	pip install git+https://github.com/elastic/elasticsearch-py-async
fi

exec "$@"
