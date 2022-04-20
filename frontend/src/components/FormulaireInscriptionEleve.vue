<script setup>
import { reactive,ref } from "vue";

const emptyUser ={
    email:"",
    first_name:"",
    last_name:"", 
    password:"",
    role:[""],
};

const data = reactive({
  user: {...emptyUser},
});

defineExpose({
  data,
});


function register(){
 const fetchOptions = {
 method: "POST",
 body:JSON.stringify( data.user), 
 headers: {
      "Content-Type": "application/json",
    },
 }; 
 fetch("http://localhost:8989/api/auth/signup", fetchOptions)
    .then((response)=>{
      return response.json();
    })
    .then((json)=>{
        data.user={...emptyUser};
    })
    .catch((error)=>console.log("register : " + error));
}

</script>
<template>
    <div class="register">
    <form @submit.prevent="register">
        
        <label id="register">Page d'inscription</label>
        <input id="email" type="email" v-model="data.user.email" placeholder="Email"/>
        <input id="first_name" type="first_name" v-model="data.user.first_name" placeholder="Prénom"/>
        <input id="last_name" type="last_name" v-model="data.user.last_name" placeholder="Nom"/>
        <input id="password" type="password" v-model="data.user.password" placeholder="Mot de passe"/>
        <input id="role" type="role" v-model="data.user.role" placeholder="Role"/>
        <input id="inscrire" type="submit" value="Inscrire">
    </form>
    </div>
</template>

