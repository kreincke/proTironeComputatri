# This file is part of the Open Source project 'proTironeComputatri'
# (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
# It is distributed under the terms of the creative commons license
# CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)


import json
from pprint import pprint
print("\\begin{itemize}")

with open("img-meta-data.json") as img_meta_data:
    md_array = json.load(img_meta_data)
    for md in md_array:
        img_path=md["img_path"]
        img_author=md["img_meta_data"]["img_author"]
        img_comment=""
        if (md["img_meta_data"]["img_comment"]!="") : img_comment=" ("+ md["img_meta_data"]["img_comment"] + ")"
        license_name=md["img_meta_data"]["license_name"]
        licensing_url=md["img_meta_data"]["licensing_url"]
        license_url=md["img_meta_data"]["license_url"]
        repo_url=md["img_meta_data"]["repo_url"]
        repo_name=md["img_meta_data"]["repo_name"]
        repo_img_id=md["img_meta_data"]["repo_img_id"]
        if (md["img_meta_data"]["repo_img_id"]!="") :
            repo_id=repo_name+":"+md["img_meta_data"]["repo_img_id"]
        else:
            repo_id=repo_name
        print(
            "   \\item \\includegraphics[height=8pt]{{\\{}}} ".format(img_path)
            +   "von {}. ".format(img_author)
            +   "\\href{{{}}}{{Lizenziert}} unter \\href{{{}}}{{{}}}. ".format(licensing_url,license_url,license_name)
            +   "Bereitgestellt auf \\href{{{}}}{{{}}}.".format(repo_url,repo_id)
            +   "{}".format(img_comment)
        )
    #pprint(md_array)

print("\\end{itemize}")

