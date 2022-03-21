<template>

    <head>
        <meta charset="UTF-8">
        <title>Edutech</title>
        <link rel="stylesheet" href="style2.css"/>
        <title>EDUTECH</title>
    </head>
    <body>
        <header>
            <div class="contenu">
                <h1 class="titre1">Calcul</h1> 
                <router-link to="/MemoryPartie">Jeu du memory des multiplication</router-link>                               
                <router-view/>
            </div>    
        </header>
        <section>
            <article>
                <div class="cours">
                    <h3>Cours</h3>
                </div>
                <div>
                    <QuillEditor theme="snow" />
                </div>               
            </article>
        </section>
    </body>
</template>
    