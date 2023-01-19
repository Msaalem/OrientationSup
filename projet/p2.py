etudiants = {
    'A': ['DSI', 'RSS', 'CNM'],
    'B': ['RSS', 'DSI', 'CNM'],
    'C': ['CNM', 'DSI', 'RSS'],
    'D': ['DSI', 'RSS', 'CNM'],
    'E': ['RSS', 'DSI', 'CNM'],
    'F': ['CNM', 'DSI', 'RSS']
}

les_choix = {
    'DSI': ['B', 'E', 'C', 'D', 'A', 'F'],
    'RSS': ['C', 'F', 'A', 'B', 'E', 'D'],
    'CNM': ['A', 'D', 'B', 'C', 'E', 'F']
}
rss = 2
cnm = 1
dsi = 2
nbr_de_filiere = 3
resultats = []
etudiants_sans_choix = []

for etudiant in etudiants:
    etudiants_sans_choix.append(etudiant)

while len(etudiants_sans_choix) > 0:
    for etudiant in etudiants_sans_choix:
        for i in range(nbr_de_filiere):
            choix = etudiants[etudiant][i]
            if (choix == "DSI" and dsi != 0) or (choix == "RSS" and rss != 0) or (choix == "CNM" and cnm != 0):
                resultats.append([etudiant, choix])
                etudiants_sans_choix.remove(etudiant)
                if choix == "DSI":
                    dsi -= 1
                if choix == "RSS":
                    rss -= 1
                if choix == "CNM":
                    cnm -= 1
                break

            else:
                choix_libre = [k for (k,v) in resultats if choix == v]
                etudiant_proposer = choix_libre[0]
                for k in choix_libre :
                    if les_choix[choix].index(k) > les_choix[choix].index(etudiant_proposer):
                        etudiant_proposer = k
                rating_etudiant_proposer = les_choix[choix].index(etudiant_proposer)
                rating_etudiant_actuel = les_choix[choix].index(etudiant)

                if rating_etudiant_proposer > rating_etudiant_actuel:
                    etudiants_sans_choix.remove(etudiant)
                    resultats.remove([etudiant_proposer, choix])
                    resultats.append([etudiant, choix])
                    etudiants_sans_choix.append(etudiant_proposer)
                    break
                elif i==nbr_de_filiere-1 :
                    print(f"les etudiant sans choix sont : {etudiant}")
                    etudiants_sans_choix.remove(etudiant)
                    break

print(resultats)
