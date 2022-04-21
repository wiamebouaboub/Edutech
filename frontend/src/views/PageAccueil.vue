

<template>
    <body>
        <section>
            <article>
                <div class="blocs">
                        <router-link to="/PageMaths" class="box1">Mathématiques</router-link>
                        
                        <router-link to="/PageDecMond" class="box1">Découverte du monde</router-link>
                </div>
                <router-view/>  
                <div class="blocs">
                    <router-link to="/PageFrancais" class="box1">Français</router-link>
                </div>
                <router-view/>  
                <router-link to="/" class="logout">Se déconnecter</router-link>       
                <router-link to="/PageInscriptionEleve" >Inscrire nouvel élève</router-link>
            </article>
        </section>
    </body>
</template>
<style>
.logout{
    background-color:#1dbf80;
    border-radius: 10px;
    height: 23px;
    width: 100px;
    font-family: 'Times New Roman', Times, serif;
    color : rgb(0, 0, 0);
    font-size: 15px;
    right: 0;
position: absolute;
top: 0;
}
</style>