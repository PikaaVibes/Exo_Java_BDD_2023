<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<%
    int countE = 0;
    for (int i = 0; i < chaine.length(); i++) {
        if (chaine.charAt(i) == 'e') {
            countE++;
        }
    }
%>

<h2>Exercice 2 : Affichage verticale</h2>
<%
    for (int i = 0; i < chaine.length(); i++) {
%>
    <p><%= chaine.charAt(i) %></p>
<%
    }
%>

<h2>Exercice 3 : Retour à la ligne</h2>
<%
    String[] mots = chaine.split(" ");
    for (String mot : mots) {
%>
    <p><%= mot %></p>
<%
    }
%>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<%
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < chaine.length(); i += 2) {
        sb.append(chaine.charAt(i));
    }
%>
<p><%= sb.toString() %></p>

<h2>Exercice 5 : La phrase en verlant</h2>
<%
    StringBuilder sbReverse = new StringBuilder(chaine).reverse();
%>
<p><%= sbReverse.toString() %></p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<%
    int voyelles = 0, consonnes = 0;
    String vowels = "aeiouyAEIOUY";
    for (char c : chaine.toCharArray()) {
        if (Character.isLetter(c)) {
            if (vowels.indexOf(c) != -1) {
                voyelles++;
            } else {
                consonnes++;
            }
        }
    }
%>
<p>Voyelles : <%= voyelles %></p>
<p>Consonnes : <%= consonnes %></p>

<% } else { %>
    <p>Veuillez entrer une chaîne d'au moins 6 caractères.</p>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
