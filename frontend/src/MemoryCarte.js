export default class Carte {
    constructor (id, carte, visible = false) {
    this._id = id;
    this._carte = carte;
    this._visible = visible;
    }
    get id() {
        return this._id;
        }
    get question() {
    return this._carte;
    }
    get reponse() {
    return this._visible;
    }
    get visible() {
        return this._visible;
    }
    retourner() {
        this._visible = !this._visible;
        }
   }