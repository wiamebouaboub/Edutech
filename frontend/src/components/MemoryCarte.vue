<script setup>
import { ref, defineEmits } from "vue";

defineProps(["texte"]);
const emit = defineEmits(['retourne']);

let estRetourne=ref(false);
function retourner(){
  retournerCarte();
  emit("retourne");
}

function retournerCarte(){
    estRetourne.value=!estRetourne.value;
}

</script>

<template>
  <div class="box2">
    <div @click="retourner()" >
      <img id="carteRetour" v-if="estRetourne" src="../assets/recto-carte.png"/>
      <img id="carte" v-else src="../assets/fondcarte.png"/>
    </div>
    <div class="table" v-if="estRetourne"> 
      {{ texte }}
    </div>
  </div>
</template>


<style>
.table{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  padding: auto;
  margin: auto;
  font-size: 25px;
}

#carte,#carteRetour{
	max-width: 100%;
	height: auto;
}


.box2{
  position: relative;
  text-align: center;
  width: 300px;
  height: 300px;
  cursor: pointer;
}

</style>