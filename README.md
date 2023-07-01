# Monitoring-Respiratoire

## Description
Ce projet a pour but de minimiser les efforts inefficaces d'un patient lors de l'utilisation d'un appareil d'assistance respiratoire. Les efforts inefficaces sont des inspiration faites par le patient et non assisté par la machine et qui peuvent causer de lourd dégats sur un patient en réanimation. Pour éviter ces effort inefficace une bonne calibration de l'effort respiratoire du patient est l'enjeu majeur. 
Dans ce projet on détermine un des 2 paramètres nécessaire à la determination de l'effort respiratoire selon le modèle mathématique développé par M. Vicario. Pour cela on dispose de courbes respiratoires de patient et on réalise une regression sur la partie linéaire sur la courbe de phase d'un patient (diagramme débit/volume). Il faut donc ne pas prendre en compte de la partie non linéaire du diagramme de phase ainsi qu'eviter le bruite et les potentiel 'bosse' du aux efforts inefficace. On applique donc le modèle de regression de M. Mazet présent dans son GitHub pour de la régression évitant le bruit et par le bas.

Le résultat est l'obtention du coefficient directeur de la droite qui nous donne le coefficient qui nous interesse.

## Installation et Run
Le projet a été réalisé sur un MATLAB, il suffit donc de mettre l'ensemble des fichiers .m et la base de donnée 'Covidien' dans un meme dossier puis de run le fichier 'Main'. Il sera alors demandé de quel courbe de client vous voulez déterminer le coefficent de l'effort respiratoire. Le portrait de phase (plein à l'interieur) s'affichera alors avec une regression adapté à la courbe sur la partie linéaire avec le coefficient directeur de la courbe qui s'affichera dans la rubrique 'Slope'

## Fonctionnement
Tout l'enjeu était de determiner quel valeur du seuil (threshold) il fallait attribuer pour chaque patient. Après étude j'ai pu déterminé que la formule qui regissait la valeur du threshold optimal dépendait de l'importance de l'effort inefficace et de la manière suivante : Seuil(eff_in) = 0.035/(eff_in)^(4/5) lorsque eff_in > 0.2 et Seuil(eff_in) = 0.13 lorsque eff_in < 0.2 . Tout est détaillé dans le compte rendu de projet présent sur le répertoire.

## Aller plus loin
Il serait interessant de déterminer le second paramètre de l'effort respiratoire à partir de la méthode de M. Vicario présenté dans son papier, présent sur le répertoire de ce GitHub
