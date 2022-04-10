<script setup>
import { reactive, onMounted} from 'vue' ;
import MemoryCarte from '../components/MemoryCarte.vue';
import Paire from '../MemoryPaire';

const listeC = reactive([]);
const listeMelange = reactive([]);
const listePaire = reactive([]) ;

function recupererPaire() {
    const fetchOptions = { method: "GET"};
  fetch("api/paireMemories", fetchOptions)
    .then((response) => {
        
      if (!response.ok) {
        throw new Error(response.status);
      }
      return response.json();
    })
    .then((dataJSON) => {

       listePaire.splice(0, listePaire.length)
        dataJSON._embedded.paireMemories.forEach((v)=>listePaire.push(new Paire(v.reponse-1, v.question, v.reponse)));
        console.log("listePaire", listePaire);
    })
    .then(()=>{
        afficherPaire(listePaire);
    })
    .then(()=>{
        melanger(listeC);
    })
    .catch((error) => console.log("erreur",error));
}

onMounted(()=>{
    recupererPaire();
    
});

function ajouterPaire(paire){
	let ajout_ok = false
    console.log(ajout_ok);
    
	if(verifierPaireDejaChoisie(paire)){
        console.log("test",paire._question)
		listeC.push(paire._question)
        listeC.push(paire._reponse)
		ajout_ok = true
        console.log("liste C",listeC)
        console.log(ajout_ok);
    }
	return ajout_ok
}

function verifierPaireDejaChoisie(paire){
	let res = true
    listeC.forEach((q)=>{
        if(paire.question==q){
            res = false
        }
    })
	return res
}

function paireHasard(listePaire){
	let index = Math.floor(Math.random()*listePaire.length)
    console.log(listePaire[index]);
	return listePaire[index]
}

function afficherPaire(listePaire){ 
    let paire = null
    let booleen = null
    let compteur = 0

    while(compteur<8){  
    paire = paireHasard(listePaire);
    booleen = ajouterPaire(paire)
    if(booleen){compteur++}
    }
}

function melanger(listeC){  
    let compteur = 0
    let index = null
    let listeStock = []
    
    for(let i=0;i<16;i++){
        listeStock.push(i)
    }
    
    while(listeStock.length>0){  
        index = Math.floor(Math.random()*16)
        if(listeStock.indexOf(index)>-1){
            listeStock.splice(listeStock.indexOf(index),1)
            listeMelange.push(listeC[index])
        }
    }
}

</script>

<template>
    <div class=acces>
        <router-link to="/PageCalcul" class="box1">Retour au cours</router-link>
        <input type="button" name="Rejouer" id="refresh"  onclick="history.go(0)"/>
        </div> 
    <div class="conteneur">
    <MemoryCarte v-for="(texte, index) in listeMelange" 
            :key="index"
            :texte="texte"/>
    </div>
    

    <router-view/>  
</template>

<style>
.conteneur{
    display: flex;
    flex-direction: row;
    justify-content: center;
    margin: 20px 10px 20px 10px;
    flex-wrap: wrap;
}

.acces{
    display: flex;
    justify-content: center;
}

#refresh{
  background-image: url("../assets/rejouer.png");
  background-size: cover;
  width: 50px;
  height: 50px;
  border: none;
  cursor: pointer;
  margin-right: 8px;
}

</style>