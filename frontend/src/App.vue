<template>
    <main>
        <head>
            <title>EDUTECH</title>
        </head>
        <body>
            <header>
                <div class="contenu">                    
                    <router-link to="/PageAccueil" ><img src="./assets/Logo-EDUTECH.png" id="accueil"></router-link>  
                    <div id="titre">
                        <h1 class="titre">EDUTECH</h1>                             
                    </div>                
                </div>                 
                <router-view/>
            </header>
            <div class="container">
	<br/><br/>
		<form th:action="@{/login}" method="POST" class="form-signin" style="width:30%;margin:auto">
			<h3 class="form-signin-heading">LOGIN PAGE</h3>
			
			<br/>
			 <div align="center" th:if="${param.error}">
				<p style="font-size: 20; color: #FF1C19;">Username or password is invalid</p>
			</div>
			
			<input type="text" id="username" name="username"  th:placeholder="Username or email"
				class="form-control" /> <br/> 
			<input type="password"  th:placeholder="Password"
				id="password" name="password" class="form-control" /> <br />
				
			
			<button class="btn btn-lg btn-block" name="Submit" value="Login" type="Submit" th:text="Login" style="background-color:rgb(148, 236, 47);font-weight: bold">Se connecter</button>
		</form>
	</div>
        </body>
    </main>
</template>

<style>

h1{
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    font-size: 50px;
    text-align: center;
    position: relative;
    padding: 0 0 0 350px;
}

#accueil {
	width: 150px;
	height: 150px;
    margin-right: 200px;
}

.contenu{
    display: flex;
    flex-wrap: wrap;
    justify-content:flex-start;
}


h3{
    text-decoration-line: underline;
    margin: 0 0 0 10px;
}

/*Style page d'acceuil */

h2{
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    font-size: 50px;
    text-align:center;
    position:relative;
    margin: auto;
    padding: 10px 10px 10px 10px;
}
h2:before{
    background-color: rgb(0, 0, 0);
    content: "";
    display: inline-block;
    height: 1px;
    position: relative;
    vertical-align: middle;
    width:10%;
}

h2:after{
    background-color: rgb(0, 0, 0);
    content: "";
    display: inline-block;
    height: 1px;
    position: relative;
    vertical-align: middle;
    width:10%;
    margin-left: 10px;
}

h2::before{
    right: 0.2em;
    margin-left: -80%;
}

h2::after{
    right: 0.2em;
    margin-right: -80%;
}

.box1{
    color : rgb(0, 0, 0);
    border: 1.2px rgb(148, 236, 47) solid ;
    border-radius: 20px;
    font-family: 'Arial Black', Georgia, 'Times New Roman', Times, serif;
    background-color: rgb(148, 236, 47);
    font-size: 20px;
    height: 100px;
    width: 250px;
    margin: auto;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
}

a:link{
    text-decoration: none;
}

.blocs{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;

    height: 200px;
}
</style>
