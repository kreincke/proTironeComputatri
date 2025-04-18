<!--
% This file is part of proScientia.ltx
% (c) 2022 Karsten Reincke (https://github.com/kreincke/proScientia.ltx)
% It is distributed under the terms of the creative commons license
% CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)
-->
* *General*: shorttitle;subtitle;titleaddon;translator;addendum;annotation;note;langid;url;urldate;owner;timestamp;file;keyword;abstract

* **Article**:
  - *mandatory*: author;gender;title;journaltitle;date;pages;
  - *optional*: journalsubtitle;number;series;volume;issn; issue;
* **Book**:
  - *mandatory*: author;gender;title;location;date;
  - *optional*: edition;editor;isbn;publisher;volumes;volume;series;number;
* **Collection**:
  - *mandatory*: title;editor;gender;location;date;
  - *optional*: edition;isbn;publisher;volumes;volume;series;number;
* **Misc**:
  - *mandatory*:
  - *optional*: author;gender;title;location;date;editor;howpublished;pub-state;version;
* **Online**:
  - *mandatory*: url;urldate
  - *optional*: author;gender;title;organization;location;date;pubstate
* **Proceedings**:
  - *mandatory*: title;editor;gender;location;date;organization;
  - *optional*: edition;isbn;publisher; volumes;volume;series;number;
* **Inbook**:
  - *mandatory*: author;gender;title;pages;crossref
  - *optional*:
* **Incollection**:
  - *mandatory*: author;gender;title;pages;crossref
  - *optional*:
* **Inproceedings**:
  - *mandatory*: author;gender;title;pages;crossref
  - *optional*:
