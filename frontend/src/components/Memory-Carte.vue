<script setup>
import { ref, defineEmits, defineProps } from "vue";
import Carte from '../MemoryCarte';

const props = defineProps(["texte", "index"]);
const emit = defineEmits(['retourne'])

</script>

<template>
  <div class="box2" @click="$emit('retourne', props.index)">
    <div>      
      <img id="carteRetour" v-if="texte.visible" src="../assets/recto-carte.png"/>  
      <img id="carte" v-else src="../assets/fondcarte.png"/>
    </div>
    <div class="table" v-if="texte.visible">
    {{ texte.carte }}
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