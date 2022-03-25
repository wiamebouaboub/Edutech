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
  padding: auto;
  margin: auto;
  font-size: 25px;
}

#carte{
	max-width: 100%;
	height: auto;
}


.box2{
  position: relative;
  text-align: center;
  width: 300px;
  height: 300px;
}

</style>