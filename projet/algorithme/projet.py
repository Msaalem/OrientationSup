etudiants = {
    'A': ['CNM', 'DSI', 'RSS'],
    'B': ['CNM', 'DSI', 'RSS'],
    'C': ['DSI', 'CNM', 'RSS'],
    'D': ['DSI', 'RSS', 'CNM'],
    'E': ['RSS', 'DSI', 'CNM'],
    'F': ['RSS', 'CNM', 'DSI']
}

classements = {
    'DSI': ['C', 'E', 'D', 'B', 'F', 'A'],
    'RSS': ['B', 'F', 'A', 'E', 'D', 'C'],
    'CNM': ['A', 'B', 'C', 'D', 'E', 'F']
}

places = {
    'DSI': 2,
    'RSS': 2,
    'CNM': 1
}


def orienter_les_etudiants(etudiants, classements, places):
    etudiants_en_attente = [etudiant for etudiant in etudiants]

    resultats = {choix: [] for choix in places}


    def obtenir_une_liste_attente_sans_etudiant(etudiant):
        return [x for x in etudiants_en_attente if x != etudiant]

    def obtenir_des_resultats_tries_avec_eleve(etudiant, choix):
        resultats[choix].append(etudiant)
        return [x for x in classements[choix] if x in resultats[choix]]

    while etudiants_en_attente:
        for etudiant in etudiants_en_attente.copy():
            if not etudiants[etudiant]:
                etudiants_en_attente = obtenir_une_liste_attente_sans_etudiant(etudiant)
                continue
            choix = etudiants[etudiant].pop(0)
            if len(resultats[choix]) < places[choix]:
                resultats[choix] = obtenir_des_resultats_tries_avec_eleve(etudiant, choix)
                etudiants_en_attente = obtenir_une_liste_attente_sans_etudiant(etudiant)
            else:
                if classements[choix].index(etudiant) < classements[choix].index(resultats[choix][-1]):
                    resultats[choix] = obtenir_des_resultats_tries_avec_eleve(etudiant, choix)
                    etudiants_en_attente = obtenir_une_liste_attente_sans_etudiant(etudiant)
                    etudiants_en_attente.append(resultats[choix].pop())

    return resultats


print(orienter_les_etudiants(etudiants, classements, places))