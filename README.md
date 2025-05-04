
<!--
% This file is part of the Open Source project 'proTironeComputatri'
% (c) 2025 Karsten Reincke (https://github.com/kreincke/proTironeComputatri)
% It is distributed under the terms of the Creative Commons license
% CC-BY-4.0 (= https://creativecommons.org/licenses/by/4.0/)
-->

<!-- LTeX:Language=de-DE -->

<div style="display: flex;justify-content: center">
<a href="https://github.com/kreincke/proTironeComputatri/"><img src="./img.gl/logo-protirone.png" height="180"></a>
</div>


# Freie Unterrichtsmaterialien für die Ausbildung von Fachinformatikerinnen

<!-- LTeX:Language=en-US -->


> *In Germany, there is a second way to become a computer scientist besides studying computer science: you can get an in-company training as an IT specialist, supplemented by vocational school instruction. Ultimately, you are certified by the Chamber of Industry and Commerce (IHK). This repository offers teaching materials in accordance with the official German framework curriculum. The language of instruction is German. Thus, this repository also uses German as the language of teaching material.*

<!-- LTeX:Language=de-DE -->

## Manifest

Das GitHub-Repository *proTironeComputatri* stellt **_freie_ Lehr- und Lernmaterialien für die Ausbildung zur Fachinformatikerin**[^1] bereit. Es enthält Creative-Commons-lizenzierte Dokumente oder Open-Source-Software, die

* inhaltlich dem Rahmenlehrplan und den Prüfungskatalogen entsprechen,
* strukturell der Ordnung der Lernfelder folgen und 
* (mit der Zeit) eine Reihe fertige Unterrichtseinheiten bieten.  

Dazu gliedern wir jedes Lernfeld in verschiedene Themen (Subjects = `sbj`) und jedes Thema in verschiedene Aspekte (Topics = `tpc`). Jeder Aspekt soll in 1-2 Doppelstunden vermittelt werden können und hat einen spezifischen Ordner, in dem wir  

* die unmittelbar vorausgehenden/vorausgesetzten Themen bzw. Aspekte auflisten [`dependencies-??.json`],
* eine [ZEN-Präsentation](https://www.amazon.de/Zen-oder-die-Kunst-Präsentation/dp/3864907594) anbieten, deren Folien Strukturen und Zusammenhänge optisch verdeutlichen [`zp/`],
* ein dazu passendes 'Ton-Spur'-Dokument anlegen, das Zusammenhänge und Hintergründe verdichtet skizziert [`oraltrack-??.md`]
* beides - optional - zu einem Dokument für das reine Selbststudium verschriftlichen [`dd/`]
* entsprechende Übungen, Anleitungen und Lösungen bereitstellen [`exercise-??.md`]
* einen dafür passenden Ablaufplan hinterlegen [`playbook-??.md`]

Unsere Vision ist es, dass jede Lehrerin zu jedem Thema oder Aspekt der Ausbildung zum Fachinformatiker bei uns fertig aufbereitete Unterrichtsmaterialien findet, die sie ohne urheberrechtliche Bedenken oder Gebühren verwenden darf. Und wir wollen, dass sich auch die Schüler hier bedienen, weil ihnen hier der von Abschlussprüfungen I und II erwartete Stoff umfänglich aufbereitet wird.

Wir wissen, dass so ein Ziel nur kooperativ zu erreichen ist. In kleinen Schritten. Deshalb stellen wir die Materialien über ein GitHub-Repository zum Download bereit: Inhaltsdateien unter den Bedingungen der Creative-Commons-Lizenz *CC-BY-4.0*, die anderen unter denen der MIT-Lizenz. 

Beide zusammen -- die GitHub-Methoden und die Lizenzierung -- erlauben es uns, mit Techniken der Open-Source-Softwareentwicklung gemeinsam wirklich freie Unterrichtsmaterialien für die Ausbildung von Fachinformatikerinnen zu entwickeln. Ganz nach dem Prinzip **Start early. Release often**. Wenn Sie mitwirken wollen, sind Sie als Contributor herzlich willkommen! Wir freuen uns auf jeden Pullrequest!!

## Hintergrund

In Deutschland gibt es neben dem Studium der Informatik die Ausbildung zur Fachinformatikerin.[^1] Ersteres schließt mit dem Bachelor oder Master ab, letztere mit dem Gesellenbrief. Denn die Ausbildung zur Fachinformatikerin ist Teil des deutschen dualen Ausbildungssystems: die 'Azubis' - die *Tirones* - werden im Betrieb und in der Berufsschule ausgebildet. Und für die Ausbildung in der Berufsschule braucht es - neben Lehrerinnen und einem Rahmenlehrplan - ein Curriculum und entsprechende Lehrmaterialien.

Wäre es nicht schön, wenn die zukünftigen Informatikerinnen gleich anhand von und mittels Open-Source-Software ausgebildet würden?

## FAQ

* TODO erläutere, warum der lateinische Name? [computatrum = Rechenmaschine/Computer](https://www.latin-is-simple.com/de/vocabulary/noun/6131/) + [tiro = Lehrling](https://de.pons.com/übersetzung-2/latein-deutsch/tiro) + [pro needs ablativ 'tirone'](https://de.wikibooks.org/wiki/Latein/_Grammatik/_Satzlehre/_Präpositionen/_Präpositionen_mit_Ablativ)
* TODO erläutere Lizenzierung und Lizenzerfüllung
* TODO erläutere und ermögliche das Customizen der Dokumente
* TODO erläutere und ermögliche einen build-Zweig ein
* TODO erläutere das Generieren der LaTeX/beamer-Zen-Präsentationen
* TODO erläutere das Generieren der LaTeX/komscript-Deepdive-Dokumente
* TODO erläutere generisches Femininum

Anmerkungen:

[^1]: Wir nutzen das generische Femininum. Dort, wo wir es nicht tun, hätten wir es tun sollen und werden nachbessern. Denn nach mehreren Jahrhunderten, in denen es andersherum lief, werden wir Männer es gut einige Jahrzehnte aushalten, wenn nun wir mitgemeint sind - nicht, wie bisher, die Frauen. Die meisten Frauen werden das nicht fordern. Weil sie ja eine gerechteres System wollen. Aber wir Männer können ihnen das von uns aus geben, ritterlich. Das wäre dann unser Beitrag zu einer respektvolleren Welt und zur Bewahrung einer sprachlichen Eleganz. Denn [Sprache ist, was wir draus machen](https://www.amazon.de/Sprache-ist-was-draus-machst/dp/342644612X/).
