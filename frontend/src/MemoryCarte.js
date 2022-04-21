export default class Carte {
    constructor (id, carte, visible = false, pasgagnee = true) {
    this._id = id;
    this._carte = carte;
    this._visible = visible;
    this._pasgagnee = pasgagnee;
    }
    get id() {
        return this._id;
        }
    get carte() {
        return this._carte;
    }
    get visible() {
        return this._visible;
    }
    get pasgagnee(){
        return this._pasgagnee;
    }
    retourner() {
        this._visible = !this._visible;
        }
   }