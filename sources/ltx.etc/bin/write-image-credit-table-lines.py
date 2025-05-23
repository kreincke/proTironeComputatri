
import json
from pprint import pprint

with open("img-meta-data.json") as json_file:
    json_data = json.load(json_file)
    for im in json_data:
        pprint(im["imPath"])
    pprint(json_data)

