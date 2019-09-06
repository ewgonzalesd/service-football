const axios = require('axios');
const constantes = require('../routes/constantes');

class FootballService {
    constructor() {
        this.instance = axios.create({
            baseURL: constantes.BASEURL,
            timeout: 5000,
            headers: { 'X-Auth-Token': constantes.APITOKEN }
        });
    }

    competitions() {
        return this.instance.get(`/competitions`)
    }

    competition(competitionId) {
        return this.instance.get(`/competitions/${competitionId}`)
    }

    teams(competitionId) {
        return this.instance.get(`/competitions/${competitionId}/teams`)
    }

    players(teamId) {
        return this.instance.get(`/teams/${teamId}`)
    }
}

exports.FootballService =FootballService;
