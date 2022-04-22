<template>

    <head>
        <title>EDUTECH</title>
    </head>
    <body>
        <!--<header>
            <div class="contenu">
                <h2 class="titre1">Grammaire</h2>                                
            </div>    
        </header>-->
        <section>
            <article>
                <div class="cours">
                    <h2>La phrase</h2>
                    <div class="cour">
                    <div class="casedef"><h3>Definition</h3></div>
                    <p>La phrase est une suite de mots qui veut dire quelque chose. </p>
                    <p>Elle a sens.</p>
                    <p>La phrase commence toujours par une majuscule et se termine par un point.</p>
                    </div>
                    <h2>La ponctuation</h2>
                    <div class="cour">
                    <div class="casedef"><h3>Definition des signes de ponctuation</h3></div>
                    <p>Les signes de ponctuation sont des symboles qu'on trouve dans les phrases et à la fin des phrases.</p>
                    <div class="caseprop"><h3>Propriété de la ponctuation</h3></div>
                    <p><ol>
                        <li> A la fin de la phrase, on peut trouver 3 signes de ponctuation:
                        <ul>
                            <li>Le point : .</li>
                            <li>Le point d'interrogation : ?</li>
                            <li>Le point d'exclamation : !</li>
                        </ul></li>
                        <li> Dans la phrase, on trouve la virgule. Elle permet de faire une courte pause dans la lecture: , .</li>
                        </ol>
                    </p>
                    </div>
                </div>

                              
            </article>
            <h2>Ajout de cours</h2>
            <div class="italic"><p>Réservé au maître uniquement</p></div>
            <div class="editCours" >
                    <QuillEditor theme="snow" />
                    
                </div> 
        </section>
    </body>
</template>

<style>
h3{
    text-decoration:none;
}



.casedef{
    background-color:#F5C6AE;
    position:relative;
    left:37%;
    border-radius: 10px;
    width :395px;
}

.caseprop{
    position:relative;
   left:37%;
    background-color:#B0D6FA;
    border-radius: 10px;
    width :395px;
}

.cour{
  
    background-color:#F9FCFA;
}

p,h3{
 
   text-align:center;  
}
.italic{
    font-style:italic;
}
</style>