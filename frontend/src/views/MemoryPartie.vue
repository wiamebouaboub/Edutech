<script setup>
import { reactive} from 'vue' ;
import MemoryCarte from '../components/Memory-Carte.vue';
import Paire from '../MemoryPaire';
import MemoryJouer from '../components/Memory-Jouer.vue';
import MemoryChoixTable from '../components/Memory-Choixtable.vue';
import Carte from '../MemoryCarte';

const listeC = reactive([]);
const listeMelange = reactive([]);
const listePaire = reactive([]) ;
const listeTable = reactive([]);
const cartesSelectionnees = reactive([]);
var nbPairesTrouvees = 0;

function recupererPaire() {
    for(let i=0;i<listeTable.length;i++){
    const fetchOptions = { method: "GET"};
  fetch("api/tableMemories/"+listeTable[i]+"/pairememory", fetchOptions)
    .then((response) => {
      if (!response.ok) {
        throw new Error(response.status);
      }
      return response.json();
    })
    .then((dataJSON) => {
        dataJSON._embedded.paireMemories.forEach((v)=>listePaire.push(new Paire(v.question + "=" + v.reponse, v.question, v.reponse)));
    }).catch((error) => console.log("erreur recuperer",error));
    }
}

function ajouterPaire(paire){
	let ajout_ok = false
    
	if(verifierPaireDejaChoisie(paire)){
        let question = new Carte(paire.question + "=" + paire.reponse, paire._question);
        let reponse = new Carte(paire.question + "=" + paire.reponse, paire._reponse);
		listeC.push(question)
        listeC.push(reponse)
		ajout_ok = true
    }
	return ajout_ok
}

function verifierPaireDejaChoisie(paire){
	let res = true;
    let compteur = 0;
    listeC.forEach((c)=>{
        if(c._id == paire._id){
            compteur = compteur +1;
        }
    })
    if(compteur>1){
        res = false;
    }
	return res
}

function paireHasard(listePaire){
	let index = Math.floor(Math.random()*listePaire.length)
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

function choisirTable(){
    listeTable.splice(0, listeTable.length)
    if(table1.checked){
        listeTable.push(table1.value);
    }
    if(table2.checked){
        listeTable.push(table2.value);
    }
    if(table3.checked){
        listeTable.push(table3.value);
    }
    if(table4.checked){
        listeTable.push(table4.value);
    }
    if(table5.checked){
        listeTable.push(table5.value);
    }
    if(table6.checked){
        listeTable.push(table6.value);
    }
    if(table7.checked){
        listeTable.push(table7.value);
    }
    if(table8.checked){
        listeTable.push(table8.value);
    }
    if(table9.checked){
        listeTable.push(table9.value);
    }
    if(table10.checked){
        listeTable.push(table10.value);
    }
    recupererPaire();
}


function jouer(){
    afficherPaire(listePaire);
    melanger(listeC); 
    console.log(listeMelange)
}

function verifierCarte(index) {
    if(cartesSelectionnees.length==0){
    handlerRetourner(index)
  cartesSelectionnees.push(listeMelange[index])
  console.log("carteSelectionnees index", listeMelange[index])
  console.log("carteSelectionnees",cartesSelectionnees);
    }
    if(cartesSelectionnees.length==1 && !(cartesSelectionnees[0]._carte==listeMelange[index]._carte)){
        handlerRetourner(index)
  cartesSelectionnees.push(listeMelange[index])
  console.log("carteSelectionnees index", listeMelange[index])
  console.log("carteSelectionnees",cartesSelectionnees);
    }
  if (cartesSelectionnees.length == 2) {
      setTimeout(() => trouver(cartesSelectionnees), 2000);
    }

}

function trouver(cartesSelectionnees){
    let carte1 = cartesSelectionnees[0]._id;
    let carte2 = cartesSelectionnees[1]._id;
        if(carte1==carte2){
            nbPairesTrouvees = nbPairesTrouvees +1;
            console.log("gg nbPairesTrouvees", nbPairesTrouvees)
            supprimerCarte(carte1)
            supprimerCarte(carte2)
        }else{
            console.log("perdu")
            cartesSelectionnees[0]._visible=false;
            cartesSelectionnees[1]._visible=false;   
        }
          cartesSelectionnees.splice(0, cartesSelectionnees.length)
          console.log("cartesSelectionnees", cartesSelectionnees)
          console.log("listeMelange apres Verifier Carte", listeMelange)
}
              
function gagner(nbPairesTrouvees){
    if(nbPairesTrouvees == 10){

    }
}
    
function supprimerCarte(carte) {
    for(let i=0; i<listeMelange.length;i++){
        if(listeMelange[i]._id==carte){
            listeMelange.splice(i,1)
        }
    }
}

function handlerRetourner(index){
let carte = listeMelange[index];
carte._visible=!carte._visible;
return carte._visible;
}

</script>

<template>
    
    <div class=acces>
        <router-link to="/PageCalcul" class="box1">Retour au cours</router-link>
        <input type="button" name="Rejouer" id="refresh"  onclick="history.go(0)"/>
    </div> 

    <div class="choix-table">
    <div>
    <MemoryChoixTable @choixTable="choisirTable"/>
    </div>   
    <Memory-Jouer @go="jouer"/>
    </div>

    <div class="conteneur">
    <MemoryCarte v-for="(texte, index) in listeMelange" 
            :key="index"
            :texte="texte"
            :index="index"
            @retourne="verifierCarte"/>
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

.choix-table{
    margin: 50px 150px 0 0;
}
</style>