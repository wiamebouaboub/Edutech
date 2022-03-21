<template>
    <main>
        <head>
            <title>EDUTECH</title>
        </head>
        <body>
            <header>
                <div class="contenu">                    
                    <router-link to="/PageAccueil" ><img src="./assets/Logo-EDUTECH.png" id="accueil"></router-link>  
                    <div id="titre">
                        <h1 class="titre">EDUTECH</h1>                             
                    </div>                
                </div>                 
                <router-view/>
            </header>

        </body>
    </main>
</template>

<style>

body{
    background-color: rgb(113, 240, 162);
}

h1{
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    font-size: 50px;
    text-align:center;
    position:relative;
    margin: 10px 0 10px 0;
    padding: 10px 10px 10px 10px;
}

img {
	width: 150px;
	height: 150px;
}

.contenu{
    display: flex;
    flex-wrap: wrap;
    display: flex;
    justify-content: flex-start;
}

.titre{
    padding: 10px 0 0 400px ;
}

</style>
