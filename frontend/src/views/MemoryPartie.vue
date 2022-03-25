<script setup>
import { reactive, onMounted} from 'vue' ;
import MemoryCarte from '../components/MemoryCarte.vue';


const cartes1x1 = {question:"1x1", reponse:"1" }
const cartes1x2 = {question:"1x2", reponse:"2" }
const cartes1x3 = {question:"1x3", reponse:"3" }
const cartes1x4 = {question:"1x4", reponse:"4" }
const cartes1x5 = {question:"1x5", reponse:"5" }
const cartes1x6 = {question:"1x6", reponse:"6" }
const cartes1x7 = {question:"1x7", reponse:"7" }
const cartes1x8 = {question:"1x8", reponse:"8" }
const cartes1x9 = {question:"1x9", reponse:"9" }
const cartes1x10 = {question:"1x10", reponse:"10" }

const tableDe1 = [cartes1x1, cartes1x2, cartes1x3, cartes1x4, cartes1x5, cartes1x6, cartes1x7, cartes1x8, cartes1x9, cartes1x10]

const listeC = reactive([]);
const listeMelange = reactive([]);


function ajouterPaire(paire){
	let ajout_ok = false
	if(verifierPaireDejaChoisie(paire)){
		listeC.push(paire.question)
        listeC.push(paire.reponse)
		ajout_ok = true
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

let retournerCarteVerso = function(paire) {	
	//création du verso
	let verso = document.createElement("img")
	verso.setAttribute("src", "./assets/verso.png")
	verso.id = paire+"verso"
	//retournement de la carte
	let carte = document.getElementById(paire)
	//on verifie que la carte existe
	if(carte != null){
		carte.style.display = "none"
		carte.parentElement.insertBefore(verso, carte)
	}
}

let retournerCarteRecto = function(paire){
	//on supprime le verso
	let verso = document.getElementById(paire+"verso")
	if(verso != null){
		verso.remove()
		document.getElementById(paire).style.display = "inline"
	}
	//on change le display
}


function paireHasard(tableDe1){
	let index = Math.floor(Math.random()*tableDe1.length)
	return tableDe1[index]
}

function AfficherPaire(tableDe1){
    
    let paire = null
    let booleen = null
    let compteur = 0
    while(compteur<8){
    
    paire = paireHasard(tableDe1)
    booleen = ajouterPaire(paire)
    if(booleen){compteur++}
    }
    
}

function Melanger(listeC){
    
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

AfficherPaire(tableDe1)
Melanger(listeC)

</script>

<template>
    <div>
    <router-link to="/PageCalcul" class="box1">Retour au cours</router-link>
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
</style>