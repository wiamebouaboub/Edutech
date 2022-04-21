import { createRouter, createWebHistory } from "vue-router";
import PageInscriptionEleve from "@/views/PageInscriptionEleve.vue";
import PageConnexion from "@/views/PageConnexion.vue";
import PageAccueil from "@/views/PageAccueil.vue";
import PageMaths from "@/views/PageMaths.vue";
import PageFrancais from "@/views/PageFrancais.vue";
import PageDecMond from "@/views/PageDecMond.vue";
import PageCalcul from "@/views/PageCalcul.vue";
import PageGeometrie from "@/views/PageGeometrie.vue";
import PageMesure from "@/views/PageMesure.vue";
import PageNumerot from "@/views/PageNumerot.vue";
import PageGram from "@/views/PageGram.vue";
import PageLecture from "@/views/PageLecture.vue";
import PageConj from "@/views/PageConj.vue";
import PageVoc from "@/views/PageVoc.vue";
import MemoryPartie from "@/views/MemoryPartie.vue";
import {Role} from '@/_role/role.js';


const routes = [
  {path:"/PageInscriptionEleve",
   name:"Page InscriptionEleve",
   component: PageInscriptionEleve,
   meta:{authorize:[Role.maitre]}
  },
  {path:"/",
   name:"PageConnexion",
   component: PageConnexion,
  },
  {
    path: "/PageAccueil",
    name: "PageAccueil",
    component: PageAccueil,
  },
  {
    path: "/PageMaths",
    name: "PageMaths",
    component: PageMaths,
  },
  {
    path: "/PageFrancais",
    name: "PageFrancais",
    component: PageFrancais,
  },
  {
    path: "/PageDecMond",
    name: "PageDecMond",
    component: PageDecMond,
  },
  {
    path: "/PageCalcul",
    name: "PageCalcul",
    component: PageCalcul,
  },
  {
    path: "/MemoryPartie",
    name: "MemoryPartie",
    component: MemoryPartie,
  },
  {
    path: "/PageGeometrie",
    name: "PageGeometrie",
    component: PageGeometrie,
  },
  {
    path: "/PageMesure",
    name: "PageMesure",
    component: PageMesure,
  },
  {
    path: "/PageNumerot",
    name: "PageNumerot",
    component: PageNumerot,
  },
  {
    path: "/PageGram",
    name: "PageGram",
    component: PageGram,
  },
  {
    path: "/PageLecture",
    name: "PageLecture",
    component: PageLecture,
  },
  {
    path: "/PageConj",
    name: "PageConj",
    component: PageConj,
  },
  {
    path: "/PageVoc",
    name: "PageVoc",
    component: PageVoc,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;

