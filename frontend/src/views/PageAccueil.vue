<template>
    <body>
        <section>
            <article>
                <div class="blocs">
                        <router-link to="/PageMaths" class="box1">Mathématiques</router-link>
                        <router-link to="/PageFrancais" class="box1">Français</router-link>
                        <router-link to="/PageDecMond" class="box1">Découverte du monde</router-link>
                </div> 
                <router-view/>              
            </article>
        </section>
    </body>
</template>

<style>
/*Style page d'acceuil */
body
{
    background-color: rgb(32, 204, 181);
}

h2{
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    font-size: 50px;
    text-align:center;
    position:relative;
    margin: auto;
    padding: 10px 10px 10px 10px;
}
h2:before{
    background-color: rgb(0, 0, 0);
    content: "";
    display: inline-block;
    height: 1px;
    position: relative;
    vertical-align: middle;
    width:10%;
}

h2:after{
    background-color: rgb(0, 0, 0);
    content: "";
    display: inline-block;
    height: 1px;
    position: relative;
    vertical-align: middle;
    width:10%;
    margin-left: 10px;
}

h2::before{
    right: 0.2em;
    margin-left: -80%;
}

h2::after{
    right: 0.2em;
    margin-right: -80%;
}

.box1{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    height: 100px;
    width: 250px;
    margin: auto;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
}

a:hover{
    text-decoration: none;
}

.blocs{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;

    height: 300px;
}


</style>
