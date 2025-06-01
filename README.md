
<!--
% This file is part of the Open Source project 'proTironeComputatri'
% (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
% It is distributed under the terms of the Creative Commons license
% CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)
-->


<!-- LTeX:Language=de-DE -->

<p align="center">
  <a href="https://github.com/kreincke/proTironeComputatri/"><img src="logo.png" height="80"></a><br />
  <a href="https://github.com/kreincke/proTironeComputatri/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/kreincke/proScientia.ltx?style=flat"></a>
  <a href="https://github.com/kreincke/proTironeComputatri/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/kreincke/proScientia.ltx?style=flat"></a>  
  <a href="https://github.com/kreincke/proTironeComputatri/blob/master/LICENSING.md" title="License"><img src="https://img.shields.io/badge/License-CC_BY_4.0-blue.svg?style=flat"></a>
</p>


## Freie Unterrichtsmaterialien für die Ausbildung zur Fachinformatikerin

<!-- LTeX:Language=en-US -->

> *In Germany, there is a second way to become a computer scientist besides studying computer science: you can get an in-company training as an IT specialist, supplemented by vocational school instruction. Ultimately, you are certified by the Chamber of Industry and Commerce (IHK). This repository offers teaching materials in accordance with the official German framework curriculum. The language of instruction is German. Thus, this repository also uses German as the language of teaching material.* 

<!-- LTeX:Language=de-DE -->

### Manifest

Das GitHub-Repository *proTironeComputatri* stellt **_freie_ Lehr- und Lernmaterialien für die Ausbildung zur Fachinformatikerin**[^1] bereit. Es enthält Creative-Commons-lizenzierte Dokumente oder Open-Source-Software, die

* die die Vorgaben des Rahmenlehrplans und der Prüfungskataloge erfüllen,
* die sich an der Ordnung der Lernfelder ausrichten,
* die Reihen fertig nutzbarer Unterrichts- und Lernmaterialen bilden,
* die jedes Thema und jeden Aspekte eines Lernfeldes abdecken.  

Unsere Vision ist es, dass jede Lehrerin hier - zu jedem Thema oder Aspekt der Ausbildung zur Fachinformatikerin - fertig aufbereitete Unterrichtsmaterialien findet, die sie gebührenfrei und ohne urheberrechtliche Bedenken verwenden darf. Gleichermaßen wenden wir uns an die Schüler. Sie sollen sich hier in dem Wissen bedienen dürfen, dass ihnen dieses Repository den von den Abschlussprüfungen I und II erwarteten Stoff umfänglich und hochwertig aufbereitet.

Wir wissen, dass so ein Ziel nur kooperativ zu erreichen ist. In kleinen Schritten. Deshalb stellen wir die PDF-Dateien und ihre Quellen in einem GitHub-Repository bereit. Inhaltsdateien sind *CC-BY-4.0* lizenziert, die anderen MIT lizenziert. Beides zusammen, die GitHub-Methodik und die Lizenzierung, erlaubt es uns, mit Techniken der Open-Source-Softwareentwicklung wirklich freie Unterrichtsmaterialien für die Ausbildung von Fachinformatikerinnen zu entwickeln. Und zwar gemeinsam. Als Community.

Seien Sie als Contributorin herzlich willkommen! Wir freuen uns auf jeden Pullrequest!!

### Lizenz

Sofern im Einzelfall nicht anders vermerkt, stehen alle Dokumente mit Lehrinhalt unter der [CC-BY-4.0-Lizenz](https://creativecommons.org/licenses/by/4.0/deed.de) und alle Dateien, die die Erzeugung von PDFs organisieren, unter der [MIT-Lizenz](https://github.com/kreincke/proTironeComputatri/blob/main/LICENSE.mit.md)

Ausgenommen von dieser Regel sind
* das [proTirone-Logo](https://github.com/kreincke/proTironeComputatri/blob/main/logo.png): Es darf nur verwendet werden, um das Projekt [proTirone](https://github.com/kreincke/proTironeComputatri/) visuell zu markieren bzw. anzuteasern.
* das von [proScientia.ltx](https://github.com/kreincke/proScientia.ltx) übernommene Framework, um Deepdives, Zenpresentationen und Literaturverzeichnisse zu generieren: Es steht ganzheitlich unter der [CC-BY-4.0-Lizenz]((https://creativecommons.org/licenses/by/4.0/deed.de))

Näheres regelt unsere [Lizenzenzierungsdatei](https://github.com/kreincke/proTironeComputatri/blob/main/LICENSING.md) 

### Struktur

Das Repository enthält 3 Quellen:

* Im Ordner **releases** befinden sich - nach Lernfeld und Datum sortiert - veröffentlichte, versionierte Dokumentsammlungen, jeweils in Form einer Zip-Datei. Diese enthalten ihrerseits die direkt nutzbaren PDFs samt deren Quelldateien: Hier kann man sich **fertige**, auf einander abgestimmte **Unterrichtseinheiten für ein ganzes Lernfeld herunterladen.**
* Im Ordner **results** befinden sich die Unterrichtseinheiten letzter Hand, jeweils als Sammlung von PDF-Dateien, sortiert nach Lernfeld, Thema und Aspekt: Hier kann man sich **fertige**, auf einander abgestimmte **Unterrichtseinheiten zu einem bestimmten Tema bzw. Aspekt herunterladen.**
* Im Ordner **sources** finden sich die Quelldateien zu den unter *results* und/oder *releases* herunterladbaren PDF-Dateien. Sie dienen denen, die die Materialien an die eigenen Bedürnisse anpassen oder am Repository mitarbeiten wollen.
  * Im Ordner **sources/doc.etc** befinden sich die MS-Office bzw. Libre-Office-Dateien, ebenfalls sortiert nach Lernfeld, Thema und Aspekt.
  * Im Ordner **sources/ltx.etc** befinden sich die LaTeX, Markdown und Drawio-Dateien - gegliedert nach Lernfeld, Themen (Subjects = `sbj`) und Aspekten (Topics = `tpc`). Zusammen greifen sie ineinander und bilden eine ganze Entwicklungsumgebung, mit der aus den Quellen automatisiert die resutierenden PDFs kompiliert werden.

Die Nummern der Lernfelder folgen dem Rahmenlehrplan. Mehrere Themen (`sbj-`\*) decken ein Lernfeld ab. Jedes Thema umfasst i.d.R mehrere Aspekte (`tpc-`\*). Jeder Aspekt soll(te) in 1-2 Doppelstunden vermittelt werden können.

#### Einzelheiten zu **sources/doc.etc** basierten PDFs

TBC.

#### Einzelheiten zu **sources/ltx.etc** basierten PDFs

* Jeder Aspektordner (`tpc-*`)
  * skizziert in seinem Namen, worum es geht
  * enthält eine Datei `dependencies-[0-9]{2}.json`, die unmittelbar vorausgehenden/vorausgesetzten Themen bzw. Aspekte auflisten,
  * bietet eine *beamer*-basierte [ZEN-Präsentation](https://www.amazon.de/Zen-oder-die-Kunst-Präsentation/dp/3864907594) an, deren Folien Strukturen und Zusammenhänge verdeutlichen und/oder Aspekte anteasern [`zp`]. 
  * ergänzt die *ZEN-Präsentation* durch ein dazu passendes 'Ton-Spur'-Dokument, das Stichwörter zu Zusammenhängen und Hintergründen liefert, die zu den Präsentationsfolien erzählt werden  [`oraltrack.x.md`].
  * stellt dazu passende Übungen, Anleitungen und Lösungen bereit [`exercise.x.md`]
  * fasst den Ablauf des Unterrichts zu einem Aspekt / Thema in einem Ablaufplan zusammen [`playbook.x.md`]
 * offeriert - optional - die LaTeX-Quelle für ein Deepdive-Dokument zum Selbststudium verschriftlichen [`dd`]
* Jeder Themenordner (`sbj-*`) 
  * fasst die Präsentationen zu einem Aspekt zu einer thematischen [ZEN-Präsentation](https://www.amazon.de/Zen-oder-die-Kunst-Präsentation/dp/3864907594) zusammen.
  * kann die Aspekt bezogenen Tonspurdateien zu einer übergreifenden thematischen Tonspur-Datei zusammenfassen.

### Milestones

* [X] Bis Ende Mai 2025 Aufbau des Template- und Buildsystems
* [ ] Bis Ende Juni 2025 Integration einer exemplarischen Unterrichtseinheit in Sachen Markdown
* [ ] Bis Ende der Hessischen Sommerferien 2025 Integration eines Grundbestandes an LF09-Stunden
* [ ] Im Laufe des Schuljahrs 2025/2026 stückweise Integration von LF-11c- und LF-11d-Stunden
* [ ] ...

### Hintergrund

In Deutschland gibt es neben dem Studium der Informatik die Ausbildung zur Fachinformatikerin.[^1] Ersteres schließt mit dem Bachelor oder Master ab, letztere mit dem Gesellenbrief. Denn die Ausbildung zur Fachinformatikerin ist Teil des deutschen dualen Ausbildungssystems: die 'Azubis' - die *Tirones* - werden im Betrieb und in der Berufsschule ausgebildet. Und für die Ausbildung in der Berufsschule braucht es - neben Lehrerinnen und einem Rahmenlehrplan - ein Curriculum und entsprechende Lehrmaterialien.

Wäre es nicht schön, wenn die zukünftigen Informatikerinnen gleich anhand von Open-Source-(Software) basierten Dokumenten ausgebildet würden?

### FAQ
* **Warum nutzt Ihr einen lateinischen Projektnamen?** Wann immer wir nach *Fachinformatik* 'gegoogelt' haben, sind wir auf die universitäre Informatik gestoßen: Die Beudeutung von *Fachinformatik* und *Fach Informatik* liegen einfach eng beieinander. Auch die Wörter *Lehrling* oder *Lehrlingsausbildung* führen über *Lehre* und *Bildung* in den universitären Kontext. (Dass es dafür die Spezial(!)suche __"__Fachinformatik__"__ gibt, ist uns bekannt). Um unser Vorhaben explizit in den Kontext der deutschen Lehrlingsausbildung - das deutsche duale Ausbildungssystem - zu stellen und vom universitären Anspruch abzugrenzen, haben wir uns für den lateinischen Neologismus [computatrum = Rechenmaschine/Computer](https://www.latin-is-simple.com/de/vocabulary/noun/6131/) und das Wort [tiro = Lehrling](https://de.pons.com/übersetzung-2/latein-deutsch/tiro) entschieden. Weil letzteres in der Verbindung mit der Präposition *pro* im Ablativ genutzt wird, entstand **proTirone computatrum**: *für den Lehrling der Fachinformatik*. Und das beschreibt den Zweck dieses Projektes und Repositories recht gut.

### Open Issues

* [X] TODO: erläutere, warum der lateinische Name? [computatrum = Rechenmaschine/Computer](https://www.latin-is-simple.com/de/vocabulary/noun/6131/) + [tiro = Lehrling](https://de.pons.com/übersetzung-2/latein-deutsch/tiro) + [pro needs ablativ 'tirone'](https://de.wikibooks.org/wiki/Latein/_Grammatik/_Satzlehre/_Präpositionen/_Präpositionen_mit_Ablativ)
* [X] TODO: erläutere Lizenzierung und Lizenzerfüllung genauer
* [ ] TODO: erläutere und ermögliche das Customizen der Dokumente
* [ ] TODO: erläutere und ermögliche einen build-Zweig ein
* [ ] TODO: erläutere das Generieren der LaTeX/beamer-Zen-Präsentationen
* [ ] TODO: erläutere das Generieren der LaTeX/komscript-Deepdive-Dokumente
* [ ] TODO: erläutere generisches Femininum

Anmerkungen:

[^1]: Wir nutzen das generische Femininum. Dort, wo wir es nicht tun, hätten wir es tun sollen und werden nachbessern. Denn nach mehreren Jahrhunderten, in denen es andersherum lief, werden wir Männer es gut einige Jahrzehnte aushalten, wenn nun wir mitgemeint sind, und nicht mehr die Frauen. Die werden das zumeist (wohl) nicht (offen) fordern. Weil sie ja ein gerechteres System wollen. Aber wir Männer können es ihnen von uns aus geben, ritterlich. Das wäre dann unser Beitrag zu einer respektvolleren Welt und zur Bewahrung einer sprachlichen Eleganz. Denn [Sprache ist, was wir draus machen](https://www.amazon.de/Sprache-ist-was-draus-machst/dp/342644612X/).
