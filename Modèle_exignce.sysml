package sosyValetExigences {
    private import ScalarValues::Boolean;
    package parts {
        part def SosyValet;
    }
 
    package requirements {
        private import sosyValetExigences::parts::*;
 
        requirement specificationsSosyValet {
            doc /* le système répond au besoin de stationnement mixte : les conducteurs se garent eux-mêmes
                   ou confient leur véhicule au voiturier automatique, avec recharge partagée. */
        }
 
        requirement fonctions :> specificationsSosyValet {
            doc /* le système doit réaliser les fonctions attendues par les conducteurs et l'exploitant. */
        }
        requirement affichagePlacesLibres :> fonctions {
            doc /* le système doit afficher en temps réel les places libres et les box de dépose disponibles. */
        }
        requirement choixDuMode :> fonctions {
            doc /* le conducteur doit pouvoir choisir entre stationnement libre et voiturier, à l'avance ou à l'entrée. */
        }
        requirement guidageConducteur :> fonctions {
            doc /* le système doit guider le conducteur jusqu'à une place libre via l'application. */
        }
        requirement priseEnChargeVehicule :> fonctions {
            doc /* le système doit prendre en charge le véhicule déposé au box et le transporter jusqu'à une place (F1). */
        }
        requirement rechargePartagee :> fonctions {
            doc /* le système doit recharger à tour de rôle les véhicules électriques puis libérer la borne (F2). */
        }
        requirement accesAPiedAuVehicule :> fonctions {
            doc /* le conducteur doit pouvoir localiser son véhicule et s'y rendre à pied à tout moment. */
        }
        requirement restitutionVehicule :> fonctions {
            doc /* le système doit restituer le véhicule au box de sortie, tourné dans le sens de la sortie. */
        }
        requirement assistanceConducteur :> fonctions {
            doc /* le conducteur doit pouvoir poser ses questions au chatbot de l'application. */
        }
        requirement supervisionParking :> fonctions {
            doc /* l'exploitant doit pouvoir suivre l'occupation, les véhicules, les engins, les recharges et l'historique. */
        }
 
        requirement interactionsMaterielles :> specificationsSosyValet {
            doc /* le système doit pouvoir interagir avec les véhicules, les personnes et son environnement. */
        }
        requirement detectionOccupationPlaces :> interactionsMaterielles {
            doc /* le dispositif doit détecter la présence ou l'absence d'un véhicule sur chaque place. */
        }
        requirement detectionPersonnes :> interactionsMaterielles {
            doc /* les engins doivent détecter les piétons et s'arrêter dès qu'une personne est proche. */
        }
        requirement verificationAvantDeplacement :> interactionsMaterielles {
            doc /* le système doit vérifier qu'aucune personne n'est dans le véhicule ni autour avant de le déplacer. */
        }
        requirement connexionSansFil :> interactionsMaterielles {
            doc /* le dispositif doit communiquer sans fil avec les smartphones et le tableau de bord. */
        }
        requirement affichagePanneau :> interactionsMaterielles {
            doc /* le panneau d'entrée doit afficher les disponibilités et les modes proposés. */
        }
        requirement raccordementBornes :> interactionsMaterielles {
            doc /* le système doit pouvoir raccorder les véhicules électriques aux bornes de recharge. */
        }
        requirement compatibiliteElectrique :> interactionsMaterielles {
            doc /* le système est compatible avec le réseau électrique du parking et la puissance disponible. */
        }
        requirement maintenanceFacilitee :> interactionsMaterielles {
            doc /* les capteurs doivent être remplaçables sans travaux et les engins doivent s'autodiagnostiquer. */
        }

        requirement contraintes :> specificationsSosyValet {
            doc /* le système doit respecter les contraintes de sécurité, de normes, de performance et de coût. */
        }
        requirement dureeRestitution :> contraintes {
            doc /* le véhicule doit être restitué au box de sortie en moins de 3 minutes après la demande. */
        }
        requirement masseVehiculeMax :> contraintes {
            doc /* l'engin doit refuser tout véhicule dont la masse dépasse sa capacité (2 500 kg). */
        }
        requirement securiteEquipement :> contraintes {
            doc /* le système doit respecter les exigences de sécurité des équipements de stationnement motorisés (EN 14010). */
        }
        requirement securiteRecharge :> contraintes {
            doc /* les équipements de recharge doivent respecter la norme IEC 61851-1. */
        }
        requirement protectionDonnees :> contraintes {
            doc /* les données de plaques, d'horaires et de localisation doivent être limitées et protégées (RGPD). */
        }
        requirement accessibilitePMR :> contraintes {
            doc /* les box de dépose et les allées doivent rester accessibles aux personnes à mobilité réduite. */
        }
        requirement adaptationParkingExistant :> contraintes {
            doc /* le système doit s'installer dans un parking existant sans modifier sa structure. */
        }
        requirement coutParPlace :> contraintes {
            doc /* le coût de développement et le coût unitaire par place doivent rester maîtrisés. */
        }
    }
}
