<template>

    <head>
        <meta charset="UTF-8">
        <title>Edutech</title>
        <link rel="stylesheet" href="style2.css"/>
        <title>EDUTECH</title>
    </head>
    <body>
        <!--<header>
            <div class="contenu">
                <h1 class="titre1">Calcul</h1> 
            </div>    
        </header>-->
        <section>
            <article>
                <div class="cours">
                    <h2>Cours de multiplication</h2>
                    <div class="cour">
                    <div class="casedef"><h3>Definition de la multiplication</h3></div>
                    <p>La multiplication est une opération qui consiste à multiplier deux nombres. </p>
                    <p>Le produit de la multiplication est toujours supérieur aux deux nombres multipliés. </p>
                    <p>Le signe de la multiplication est "x".</p>
                    <div class="casedef"><h3>Definition du produit</h3></div>
                    <p>Le résultat de la multiplication est le produit.</p>
                    <div class="caseprop"><h3>Propriété de la multiplication</h3></div>
                    <p>La multiplication remplace une addition qui se répète: elle permet de trouver le résultat plus rapidement.</p>
                    <br/>
                    <img id="table" src="../assets/tabledemultiplication.jpg"/>
                    <br/>
                    </div>
                </div>

                              
            </article>
            <article>
                <div class="jeu">
                    <router-link to="/MemoryPartie" class="jeuMultip">
                    <h2>Jeu du memory des multiplication</h2>
                    </router-link>
                    <img id="jeuMem" src="../assets/icon-jeuMemory.png">                                           
                </div>
                <router-view/>

            </article>
            <h2>Ajout de cours</h2>
            <div class="editCours" >
                    <QuillEditor theme="snow" />
                </div> 
        </section>
    </body>
</template>

<style>
.jeuMultip{
    color: black;

}
#jeuMem{
    position: relative;
    left:33%;
    width: 200;
    height: 200;
}

.jeu{
    width: 200;
    height: 200;
    justify-content: left;
}


.editCours{
    margin: 0 0 50px 5px;
}

h3{
    text-decoration:none;
}

#table{
    position: relative;
    left:27%;
    width :700px;
    height : 700px;
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
</style>