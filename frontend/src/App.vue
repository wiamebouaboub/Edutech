<template>
    <head>
        <title>EDUTECH</title>
    </head>
    <body>
        <header>
            <div class="contenu">
                <h1 class="titre1">EDUTECH</h1>                                
            </div>    
        </header>
        <section>
            <article>
                <div class="blocs">
                    <router-link to="/PageMaths" class="element1">Mathématiques</router-link>
                    <router-link to="/PageFrancais" class="element2">Français</router-link>
                    <router-link to="/PageDecMond" class="element3">Découverte du monde</router-link>
                </div>  
            <router-view/>
            </article>
        </section>
    </body>
</template>

<style>
/*Style page d'acceuil */
template
{
    background-color: rgb(32, 204, 181);
}

h1{
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    font-size: 50px;
    text-align:center;
    position:relative;
    margin: auto;
    padding: 10px 10px 10px 10px;
}
h1:before{
    background-color: rgb(0, 0, 0);
    content: "";
    display: inline-block;
    height: 1px;
    position: relative;
    vertical-align: middle;
    width:10%;
}

h1:after{
    background-color: rgb(0, 0, 0);
    content: "";
    display: inline-block;
    height: 1px;
    position: relative;
    vertical-align: middle;
    width:10%;
    margin-left: 10px;
}

h1::before{
    right: 0.2em;
    margin-left: -80%;
}

h1::after{
    right: 0.2em;
    margin-right: -80%;
}
.element1{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    padding: 30px 55px 30px 55px;
    margin: auto;
}

.element2{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    padding: 30px 105px 30px 105px;
    margin: auto;
}

a:hover{
    text-decoration: none;
 }
 
.element3{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    padding: 30px 30px 30px 30px;
    margin: auto;    
}

.blocs{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;

    height: 300px;
}

.element2
{
    align-self: flex-end;
}
</style>
