package spi {
    private import ScalarValues::Boolean;
    package parts{
        /*Acteurs */
        part def Entreprise;
        part def Service_RD;
        part def Prestataire_externe;
        part def Conducteurs;
        part def Exploitants_parking;

        /*Contexte */
        part def SystemeParkingIntelligent;
        part def Voitures;
        part def PanneauNumerique;
        part def Smarphones;
        part def Ordinateurs;
        part def ReseauElectrique;
        part def ReseauSansFil;
        part def GPS;
    }

    package useCases {
        private import spi::parts::*;

        actor entreprise:Entreprise::>conducteurs;
        actor service_RD:Service_RD::>conducteurs;
        actor prestataire_externe:Prestataire_externe::>conducteurs;
        actor conducteurs:Conducteurs;
        actor exploitants_parking:Exploitants_parking::>conducteurs;

        use case consulterPlaceLibre{
            ref actor conducteurs;
        }

        use case choisirUnePlace{
            ref actor conducteurs;
        }

        use case rejoindreLaPlaceChoisie{
            ref actor conducteurs;
        }
        use case demanderAssistance{
            ref actor conducteurs;
        }
        use case superviserParking{
            ref actor exploitants_parking;
        }

        use case consulterHistorique{
            ref actor exploitants_parking;
        }

        use case maintenirLeMateriel{
            ref actor entreprise;
        }

        use case evaluerPerformanceSyteme{
            ref actor service_RD;
        }

        use case mettreajourLeLogiciel{
            ref actor prestataires_externes;
        }
    }
}