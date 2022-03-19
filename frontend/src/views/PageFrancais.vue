<template>
        <head>
        <title>EDUTECH</title>
    </head>
    <body>
        <header>
            <div class="contenu">
                <h1 class="titre1"><span class="entete">Français</span></h1>                                
            </div>    
        </header>
        <section>
            <article>
                <div class="blocs1">
                    <router-link to="/PageGram" class="bloc1">Grammaire</router-link>
                    <router-link to="/PageLecture" class="bloc2">Lecture</router-link>
                </div>
                <router-view/>
                <div class="blocs2">
                    <router-link to="/PageConj" class="bloc3">Conjugaison</router-link>
                    <router-link to="/PageVoc" class="bloc4">Vocabulaire</router-link>
                </div> 
                <router-view/>               
            </article>
        </section>
    </body>
</template>

<style>
body
{
    background-color: rgb(12, 194, 170);
}

h1{
    font-family: "ambleregular", Impact,'Arial Black', Georgia, 'Times New Roman', Times, serif;
    font-size: 50px;
    text-align:center;
    position:relative;
    margin: auto;
    padding: 10px 10px 10px 10px; 

    overflow: hidden;
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
    margin-left: 20px;
}

h1::before{
    right: 0.2em;
    margin-left: -80%;
}

h1::after{
    right: 0.2em;
    margin-right: -80%;
}

.bloc1{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    padding: 30px 75px 30px 75px;
    margin: auto;
}

.bloc2{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    padding: 30px 90px 30px 90px;
    margin: auto;
}

a{
    text-decoration: none;
 }
 
.bloc3{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    padding: 30px 75px 30px 60px;
    margin: auto;    
}
.bloc4{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    padding: 30px 70px 30px 70px;
    margin: auto;    
}

.blocs1{
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    align-content: center;
    
    height: 200px;
}

.blocs2{
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    align-content: center;
    
    height: 200px;
}

h2{
    font-size: 30px;
    height: 100px;
    text-align: left;
    margin: auto;
    padding: 10px 10px 10px 10px; 
    text-decoration: underline;
}

#editor{
    background-color: white;
}

.ql-toolbar{
    background-color: white;
}
</style>