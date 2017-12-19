# PR stats
Use Kibana for pull request statistics.

## Getting started
Start by creating the data directory with the correct permissions:
```
mkdir .elasticsearch
```

And then bring up kibana/elasticsearch:
```
docker-compose up
```

Initialize the virtualenv:
```
virtualenv env
. env/bin/activate
pip install -r requirements
pip install git+https://github.com/elastic/elasticsearch-py-async
```

Run the indexing script (you can index multiple repositories):
```
./script/index --user your-username --password your-password repo1 repo2
```

And voila! Now you can open Kibana in your browser at `localhost:5601`.
