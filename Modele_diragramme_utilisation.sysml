package spi {
    private import ScalarValues::Boolean;
    package parts{
        /*Acteurs */
        part def Entreprise;
        part def Service_RD;
        part def DataMobilis;
        part def MecaMov;
        part def Conducteurs;
        part def Exploitants_parking;

        /*Contexte */
        part def SystemeParkingIntelligent;
        part def Voitures;
        part def PanneauNumerique;
        part def Smarphones;
        part def Ordinateurs;
        part def Voituriers;
        part def Box;
        part def Capteurs;
        part def Bornes_Recharge;
        part def ReseauElectrique;
        part def ReseauSansFil;
        part def GPS;
    }

    package useCases {
        private import spi::parts::*;

        actor entreprise:Entreprise::>conducteurs;
        actor service_RD:Service_RD::>conducteurs;
        actor dataMobilis:DataMobilis::>conducteurs;
        actor mecaMov:MecaMov::>conducteurs;
        actor conducteurs:Conducteurs;
        actor exploitants_parking:Exploitants_parking::>conducteurs;

        use case consulterPlaceLibre{
            ref actor conducteurs;
        }

        use case choisirModeStationnement{
            ref actor conducteurs;
        }

        use case seGarerSoiMeme{
            ref actor conducteurs;
        }
        use case deposerVehiculeAuBox{
            ref actor conducteurs;
        }

        use case demanderRecharge{
            ref actor conducteurs;
        }

        use case suivreSonVehicule{
            ref actor conducteurs;
        }

        use case retournerAPiedAuVehicule{
            ref actor conducteurs;
        }

        use case recupererVehicule{
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

        use case gererIncidents{
            ref actor exploitants_parking;
        }

        use case entretenirSysteme{
            ref actor exploitants_parking;
        }
        use case maintenirLeMateriel{
            ref actor entreprise;
        }

        use case evaluerPerformanceSyteme{
            ref actor service_RD;
        }

        use case mettreajourLeLogiciel{
            ref actor dataMobilis;
        }

        use case intervenirSurEnginTransport{
            ref actor mecaMov;
        }
    }
}