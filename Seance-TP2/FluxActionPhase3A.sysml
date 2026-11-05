package spi {
	action suivreLeGuidageEtSeGarer{
		action selectionnerPlaceLibre;
		action calculerItineraire;
		action afficherItineraire;
		action suivreItineraire;
		action verifierPlace;
		action attribuerNouvellePlace;
		action garerVehicule;
		action confirmerStationnement;
		action terminerGuidage;
		merge merge0
		decide decide0;

		first start;
		succession start if guidageDemande then selectionnerPlaceLibre;
		then merge0;
		then calculerItineraire;
		then afficherItineraire;
		then suivreItineraire;
		then verifierPlace;
		then decide decide0;
		if placeToujoursLibre then garerVehicule;
		if placePrise
		then attribuerNouvellePlace;
		succession attribuerNouvellePlace then merge0;
		succession garerVehicule if occupationDetectee then confirmerStationnement;
		then terminerGuidage;
		then done;
	}
}
