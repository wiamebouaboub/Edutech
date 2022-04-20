<script setup>
import { reactive,ref } from "vue";

const loginUser ={
    email:"",
    password:"",
};

const data = reactive({
  user: {...loginUser},
});

defineExpose({
  data,
});

const listeToken=reactive([]);

function login(){
 const fetchOptions = {
 method: "POST",
  headers: {
      "Content-Type": "application/json",
    },
 body:JSON.stringify(data.user), 
 }; 
 fetch("http://localhost:8989/api/auth/signin", fetchOptions)
    .then((response)=>{
        return response.json();
    })
    .then((dataJSON)=>{
      localStorage.setItem('jwt','Bearer '+dataJSON.accessToken);
    })
    .then(()=>{
    document.location.href="/PageAccueil";}
    )
}
</script>



<template>
    <div class="login">
    <form @submit.prevent="login">    
        <label id="login">Page de connexion</label>
        <input id="email" type="email" v-model="data.user.email" placeholder="Email"/>
        <input id="password" type="password" v-model="data.user.password" placeholder="Mot de passe"/>
        <input type="submit" value="Se connecter"/>
    </form>
    </div>
</template>