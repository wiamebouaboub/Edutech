<script setup>
</script>

<template>
    <form @submit.prevent="$emit('choixTable')">
        <div>
        <label>Table de 1</label>
        <input id="table1" type="checkbox" v-model="table" value="1"/>
        <label>Table de 2</label>
        <input id="table2" type="checkbox" v-model="table" value="2"/>
        <label>Table de 3</label>
        <input id="table3" type="checkbox" v-model="table" value="3"/>
        <label>Table de 4</label>
        <input id="table4" type="checkbox" v-model="table" value="4"/>
        <label>Table de 5</label>
        <input id="table5" type="checkbox" v-model="table" value="5"/>
        <label>Table de 6</label>
        <input id="table6" type="checkbox" v-model="table" value="6"/>
        <label>Table de 7</label>
        <input id="table7" type="checkbox" v-model="table" value="7"/>
        <label>Table de 8</label>
        <input id="table8" type="checkbox" v-model="table" value="8"/>
        <label>Table de 9</label>
        <input id="table9" type="checkbox" v-model="table" value="9"/>
        <label>Table de 10</label>
        <input id="table10" type="checkbox" v-model="table" value="10"/>
        <input id="valider" type="submit" value="Valider"/>
        </div>
    </form>
</template>



<style scoped>

</style>