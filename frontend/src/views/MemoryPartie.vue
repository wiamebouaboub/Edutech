<script setup>
import { reactive, onMounted, onBeforeUpdate} from 'vue' ;
import MemoryCarte from '../components/MemoryCarte.vue';
import Paire from '../MemoryPaire';

const carteRefs = reactive([])
const listeC = reactive([]);
const listeMelange = reactive([]);
const listePaire = reactive([]) ;

function recupererPaire() {
    const fetchOptions = { method: "GET"};
  fetch("api/tableMemories/1/pairememory", fetchOptions)
    .then((response) => {
      if (!response.ok) {
        throw new Error(response.status);
      }
      return response.json();
    })
    .then((dataJSON) => {
        console.log("dataJSON", dataJSON._embedded.paireMemories)
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
    .catch((error) => console.log("erreur recuperer",error));
}

onMounted(()=>{
    recupererPaire();
    
});

function ajouterPaire(paire){
	let ajout_ok = false
    
	if(verifierPaireDejaChoisie(paire)){
		listeC.push(paire._question)
        listeC.push(paire._reponse)
		ajout_ok = true
        console.log("liste C",listeC)
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
    console.log("paireHasard", listePaire[index]);
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

function retournerCarte(index){
    console.log(index)
    carteRefs.push(listeMelange[index]);
    console.log(carteRefs);
    if(carteRefs.length >= 2){
        //traitement pour vérifier la réponse
        
        // on retourne les cartes ou les enlève
    }
}

onBeforeUpdate(() => {
      carteRefs.splice(0,carteRefs.length);
    });
onMounted(() => console.log(carteRefs))

</script>

<template>
    <div class=acces>
        <router-link to="/PageCalcul" class="box1">Retour au cours</router-link>
        <div id=rejouer>
        <input type="button" name="Rejouer" id="refresh"  onclick="history.go(0)"/>
        Rejouer
        </div>
        </div> 
    <div class="conteneur">
    <MemoryCarte v-for="(texte, index) in listeMelange" 
            :key="index"
            :texte="texte"
            @retourne="retournerCarte(index)"/>
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
  border: 5px;
  cursor: pointer;
  margin-right: 8px;
}

#rejouer{
    display: flex;
    justify-content: center;
    flex-direction: column;
}

</style>