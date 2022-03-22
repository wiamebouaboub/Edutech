<script setup>
defineProps(["texte", "index"]);
</script>

<template>
  <div class="box2">
    <div>
      <img id="carte" src="../assets/fondcarte.png" />
    </div>
    <div class="table">
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
}

.carte{
	max-width: 100%;
	height: auto;
}


.box2{
  position: relative;
  text-align: center;
}

</style>