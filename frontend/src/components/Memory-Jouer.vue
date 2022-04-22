<script setup>

</script>

<template>

    <form @submit.prevent="$emit('go')">
        <div class="italic"><p>Après avoir cliquer sur Valider, clique sur Jouer:</p></div>
        <input id="jouer" type="submit" value="Jouer"/>
    </form>

</template>

<style>
.italic{
  font-style:italic;
}
</style>