import yaml
try:
    import simplejson as json
except ImportError:
    import json

import argparse
import os
import string
import requests

def guess_url_from_title(title):
    result = string.replace(title, " ", "_")
    return "%s/wiki/%s" % (args.url,  result)


parser = argparse.ArgumentParser()
parser.add_argument("--collection",  help="YAML file to convert to json")
parser.add_argument("--url", default="http://ejpdocs.cuforrent.com/", help="Mediawiki URL")

args = parser.parse_args()

if not os.path.exists(args.collection):
    raise(Exception("Can't fond yaml file"))

print "YAML file is %s" % (args.collection)

collection = yaml.load(file(args.collection))

for item in collection['items']:
    if 'type' not in item:
        item['type'] = 'article'
    print 'Validating item %s' %( item['title'])
    if item['type'] == 'article':
        if 'content_type' not in item:
            item['content_type'] = 'text/x-wiki'
        if "url" not in item:
            item['url'] = guess_url_from_title(item['title'])
        #result = requests.head(item['url'])
        #if result.status_code != 200:
        #    raise(Exception("Article '%s' had a bad url: %s" %(item['title'], item['url'])))


print "got yaml input %s" % yaml.dump(collection)
print "Json output %s" % json.dumps(collection)

json_file = os.path.splitext(args.collection)[0] + ".json"

print "Output file is %s" % (json_file)

with open(json_file, 'w') as js:
    json.dump(collection, js)
