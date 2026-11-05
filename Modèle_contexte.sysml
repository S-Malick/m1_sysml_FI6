package sosyValet {
    private import ScalarValues::Boolean;
    package parts {
        part def Conducteur;
        part def ExploitantParking;
        part def Pieton;
 
        part def SosyValet;
        part def Voiture;
        part def VoitureElectrique;
        part def SmartPhone;
        part def Ordinateur;
        part def ReseauSansFil;
    }
 
    private import sosyValet::parts::*;
 
    part def ContextePhase1 {
        part conducteur: Conducteur;
        part sosyValet: SosyValet;
        part smartPhone: SmartPhone;
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
 
        flow utilise from conducteur to smartPhone;
        flow consulte from smartPhone to sosyValet;
        flow reserve from smartPhone to sosyValet;
        flow informe from sosyValet to smartPhone;
        flow alimente from reseauElectrique to sosyValet;
        connect smartPhone to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
 
    part def ContextePhase2 {
        part conducteur: Conducteur;
        part sosyValet: SosyValet;
        part voiture: Voiture;
        part smartPhone: SmartPhone;
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
        part entreeParking;
 
        flow conduit from conducteur to voiture;
        flow detecte from voiture to sosyValet;
        flow lit from sosyValet to conducteur;
        flow choisit from conducteur to sosyValet;
        flow utilise from conducteur to smartPhone;
        flow informe from sosyValet to smartPhone;
        flow alimente from reseauElectrique to sosyValet;
        connect sosyValet to entreeParking;
        connect smartPhone to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
 
    part def ContextePhase3a {
        part conducteur: Conducteur;
        part sosyValet: SosyValet;
        part voiture: Voiture;
        part smartPhone: SmartPhone;
        part pieton: Pieton[*];
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
        part sol;
        part ambiance;
 
        flow conduit from conducteur to voiture;
        flow utilise from conducteur to smartPhone;
        flow guide from sosyValet to smartPhone;
        flow detecte from voiture to sosyValet;
        flow detecte from pieton to sosyValet;
        flow perturbe from ambiance to sosyValet;
        flow alimente from reseauElectrique to sosyValet;
        connect sosyValet to sol;
        connect smartPhone to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
 
    part def ContextePhase3b {
        part conducteur: Conducteur;
        part sosyValet: SosyValet;
        part voiture: Voiture;
        part smartPhone: SmartPhone;
        part pieton: Pieton[*];
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
        part sol;
        part ambiance;
 
        flow conduit from conducteur to voiture;
        flow valide from conducteur to sosyValet;
        flow utilise from conducteur to smartPhone;
        flow confirme from sosyValet to smartPhone;
        flow verifie from sosyValet to voiture;
        flow souleve from sosyValet to voiture;
        flow transporte from sosyValet to voiture;
        flow detecte from pieton to sosyValet;
        flow perturbe from ambiance to sosyValet;
        flow alimente from reseauElectrique to sosyValet;
        connect sosyValet to sol;
        connect smartPhone to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
 
    part def ContextePhase4 {
        part conducteur: Conducteur;
        part sosyValet: SosyValet;
        part voiture: Voiture[*];
        part voitureElectrique: VoitureElectrique[*];
        part smartPhone: SmartPhone;
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
        part sol;
        part ambiance;
 
        flow utilise from conducteur to smartPhone;
        flow accepte from smartPhone to sosyValet;
        flow informe from sosyValet to smartPhone;
        flow detecte from voiture to sosyValet;
        flow recharge from sosyValet to voitureElectrique;
        flow deplace from sosyValet to voitureElectrique;
        flow alimente from reseauElectrique to sosyValet;
        flow perturbe from ambiance to sosyValet;
        connect sosyValet to sol;
        connect sosyValet to voitureElectrique;
        connect smartPhone to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
    part def ContextePhase5 {
        part conducteur: Conducteur;
        part sosyValet: SosyValet;
        part voiture: Voiture;
        part smartPhone: SmartPhone;
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
        part objetPersonnel;
        part allee;
 
        flow utilise from conducteur to smartPhone;
        flow localise from sosyValet to smartPhone;
        flow guide from sosyValet to smartPhone;
        flow detecte from conducteur to sosyValet;
        flow ouvre from conducteur to voiture;
        flow recupere from voiture to objetPersonnel;
        flow alimente from reseauElectrique to sosyValet;
        connect sosyValet to allee;
        connect smartPhone to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
 
    part def ContextePhase6 {
        part conducteur: Conducteur;
        part sosyValet: SosyValet;
        part voiture: Voiture;
        part smartPhone: SmartPhone;
        part pieton: Pieton[*];
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
        part sol;
        part sortieParking;
 
        flow utilise from conducteur to smartPhone;
        flow demande from smartPhone to sosyValet;
        flow informe from sosyValet to smartPhone;
        flow transporte from sosyValet to voiture;
        flow oriente from sosyValet to voiture;
        flow detecte from pieton to sosyValet;
        flow conduit from conducteur to voiture;
        flow alimente from reseauElectrique to sosyValet;
        connect sosyValet to sol;
        connect sosyValet to sortieParking;
        connect smartPhone to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
 
    part def ContextePhase7 {
        part exploitant: ExploitantParking;
        part sosyValet: SosyValet;
        part ordinateur: Ordinateur;
        part voiture: Voiture[*];
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
 
        flow utilise from exploitant to ordinateur;
        flow affiche from sosyValet to ordinateur;
        flow alerte from sosyValet to ordinateur;
        flow commande from ordinateur to sosyValet;
        flow detecte from voiture to sosyValet;
        flow alimente from reseauElectrique to sosyValet;
        connect ordinateur to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
 
    part def ContextePhase8 {
        part exploitant: ExploitantParking;
        part sosyValet: SosyValet;
        part ordinateur: Ordinateur;
        part reseauSansFil: ReseauSansFil;
        part reseauElectrique;
        part outillage;
        part sol;
        part ambiance;
 
        flow entretient from exploitant to sosyValet;
        flow utilise from exploitant to outillage;
        flow repare from outillage to sosyValet;
        flow diagnostique from sosyValet to ordinateur;
        flow utilise from exploitant to ordinateur;
        flow encrasse from ambiance to sosyValet;
        flow alimente from reseauElectrique to sosyValet;
        connect sosyValet to sol;
        connect ordinateur to reseauSansFil;
        connect sosyValet to reseauSansFil;
        connect sosyValet to reseauElectrique;
    }
}

