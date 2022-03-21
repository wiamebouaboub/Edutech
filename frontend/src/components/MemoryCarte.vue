<script setup>

defineProps(["texte","index"]);

</script>

<template>

<div id="carte{{index}}" class="carte">
    {{texte}}
</div>
    

</template>

<style>
 .carte {
 background: #555555;
 border-radius: 4px;
 width: 80px; height: 80px;
 display: flex;
 flex-direction: row;
 justify-content: center;
 align-items: center;
 
 }
</style>