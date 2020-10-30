import random
import mysql.connector
from datetime import datetime
from tkinter import *
from tkinter.ttk import Treeview



#déclaration variables
liste_apprenants = []
groupe = []
dico_apprenants_groupe = {}
data = ()
verification = False
myDatetime = datetime.now().strftime("%Y/%m/%d")

#rempli la liste liste_apprenants
def recupe(cur, lst):
    for i in cur: 
        lst.append(i)
    return lst

#fonction qui parcoure une liste avec un pas et en retourne leurs valeurs
def chunks(lst, nb):
    for i in range(0, len(lst), nb):
        yield lst[i:i + nb]

#verifie si l'input est un nombre entier superieur a 0
def verif(verif, nombre):
    while verif == False: 
        try:
            if nombre > 1 :
                verif = True
                return nombre
            else:
                print("Des groupe de 0 n'est pas possible !")
        except:
            print("Ce n'est pas un nombre entier !")

#créer un dictionaire pour donner un id de groupe
def id_equipe(lst, dic):
    for i in range(len(lst)):
        dic[i+1] = lst[i]
    return dic
    
#fonction pour faire le binomotron
def binomotron(lst, dico, veri, data, date):
    #connexion a la BDD
    cnx = mysql.connector.connect(user = 'root', password = 'root', host = 'localhost', port = '8081',  database = 'microsoftIA')
    cursor = cnx.cursor()
    query = ("SELECT id_apprenants, nom, prenom FROM apprenants") #va chercher les id dans la table apprenants
    cursor.execute(query)
    test = saisie.get()
    test_int = int(test)
    random.shuffle(recupe(cursor, lst))
    dico = id_equipe(list(chunks(lst,verif(veri, test_int))), dico)
    for i in range(1, len(dico)+1):
            for values in dico[i]:
                data = (values[0], i, date)  
                # print(data)    
                cursor.execute("INSERT INTO apprenants_groupe (id_apprenants, id_groupe, date) VALUES (%s, %s, %s)", data)
    for i in dico_apprenants_groupe:
        # print(dico_apprenants_groupe)
        noms = [item[1:3] for item in dico_apprenants_groupe[i]]
        noms = "   ||    ".join(" ".join(i) for i in noms)
        tableau.insert('', "end", values=(noms,i))
    cnx.commit()
    cursor.close()
    cnx.close()   

#creation de la fenetre principale
root = Tk()

#Modification de la fenetre principale
root.title("Binomotron")
root.geometry("1080x720")
root.minsize(480, 360)
#root.iconbitmap("")
root.config(background = "#95a5a6")

#creation et affichage des frames
frame_title = Frame(root, bg = "#95a5a6", bd = 1,)
frame_button = Frame(root, bg  = "#95a5a6", bd = 1,)
frame_tableau = Frame(root, bg = 'white', bd = 1,)
frame_entree = Frame(root, bg = 'white', bd = 1,)
frame_title.pack(expand = YES)
frame_tableau.pack(expand = YES)
frame_entree.pack(expand = YES)
frame_button.pack(expand = YES)


#Ajout et affichage de texte pour le litre de l'application
label_title = Label(frame_title, text = "Binomotron", font = ("Arial", 50), bg = "#95a5a6", fg ="white")
label_subtilt = Label(frame_title, text = "Patricia & Erwan", font = ("Arial", 25), bg = "#95a5a6", fg ="white")
label_title.pack()
label_subtilt.pack()

#creation et affichage du tableau d'afffichage
tableau = Treeview(frame_tableau)
tableau["columns"] = ("apprenants", "groupe")
tableau.column("apprenants", width = 900)
tableau.column("groupe", width = 100)
tableau.heading('apprenants', text='Apprenants')
tableau.heading('groupe', text='Groupe')
tableau['show'] = 'headings'
tableau.pack()

#creation et affichage du bouton
button_script = Button(frame_button, text = "Lancer le binomotron", font = ("Arial", 35), bg = "white", fg ="#95a5a6", command = lambda: binomotron(liste_apprenants, dico_apprenants_groupe, verification, data, myDatetime))
button_script.pack()

#creation et affichage de la boite de saisie 
saisie = Entry(frame_entree, bg = 'white')
saisie.pack()



#afficher la fenetre
root.mainloop()
