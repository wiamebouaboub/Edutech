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
    document.location.href="/PageAccueil";
    })
}
</script>



<template>
    <div class="login">
    <form @submit.prevent="login">    
        <h2><label id="login">Page de connexion</label></h2>
        <label><b>Email</b></label>
        <input id="email" type="email" v-model="data.user.email" placeholder="Email"/>
        <label><b>Mot de passe</b></label>
        <input id="password" type="password" v-model="data.user.password" placeholder="Mot de passe"/>
        <input type="submit" value="Se connecter"/>
    </form>
    </div>
</template>
<style>
input[type=email], input[type=password],input[type=text] {
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    width: 100%;
}

input[type=submit] {
    background-color: #1dbf80;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
form {
  position: relative;
  left:38%;
    width:30%;
    padding: 30px;
    border: 1px solid #f1f1f1;
    background: #fff;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

</style>
