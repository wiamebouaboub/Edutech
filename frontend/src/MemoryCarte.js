export default class Carte {
    constructor (id, carte, visible = false) {
    this._id = id;
    this._carte = carte;
    this._visible = visible;
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

    retourner() {
        this._visible = !this._visible;
        }
   }