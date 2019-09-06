const { Router } = require('express');
const router = Router();
const { FootballService } = require('../services/footballService');

const fs = require('fs');

const equipos=[];
const footballService = new FootballService();

const json_competitions = fs.readFileSync('src/database/competitions.json', 'utf-8');
let competitions = JSON.parse(json_competitions);


const json_teams = fs.readFileSync('src/database/teams.json', 'utf-8');
let teams = JSON.parse(json_teams);


const json_players = fs.readFileSync('src/database/players.json', 'utf-8');
let players = JSON.parse(json_players);

const pool = require('../database/conexion');


router.get('/competitions', (req, response) => {

    footballService.competitions().then(res => {
        response.send(res.data);
    }).catch(e => {
        response.send(e);
    })
});

router.get('/competitions/:competitionId', (req, response) => {

    let competition_id = req.params.competitionId;
    let newCompetition;
    let lsTeams;

    footballService.competition(competition_id).then(resCompetition => {

        newCompetition = resCompetition.data;
       /**
        competitions.push(newCompetition);
        const json_competitions = JSON.stringify(competitions);
        fs.writeFileSync('src/database/competitions.json', json_competitions, 'utf-8');
        **/
        response.json(resCompetition.data);

    }).catch(e => {
        response.send(e);
    });

    footballService.teams(competition_id).then(resTeams => {

        lsTeams = resTeams.data.teams;
        for(let team of lsTeams){
            pool.query(`INSERT INTO team (id, name, shortname, tla, address, phone, website, email, founded, clubcolors, venue)
                VALUES(${team.id},'${team.name}','${team.shortName}','${team.tla}',"${team.address}",'${team.phone}','${team.website}',
                '${team.email}','${team.founded}','${team.clubColors}',
                "${team.venue}")`, (error, result) => {
                if (error) throw error;
            });
        }
        /**
        teams.push(newTeams);

        const json_teams = JSON.stringify(teams);
        fs.writeFileSync('src/database/teams.json', json_teams, 'utf-8');
            **/

    }).catch(e => {
        response.send(e);
    });

});

router.get('/team', (req, response) => {
    pool.query('SELECT * FROM team', (error, result) => {
        if (error) throw error;
        response.send(result);
    });
});


router.get('/team/:teamId', (req, response) => {

    let teamId = req.params.teamId;
    let lsPlayers;


    footballService.players(teamId).then(resPlayers => {

        lsPlayers = resPlayers.data.squad;
        for(let player of lsPlayers){
            pool.query(`INSERT INTO player (id, name, shirtnumber) VALUES(${player.id},"${player.name}",${player.shirtNumber});`, (error, result) => {
                if (error) throw error;
            });
        }
        /**players.push(newTeam);
        const json_players = JSON.stringify(players);
        fs.writeFileSync('src/database/players.json', json_players, 'utf-8');
        response.send(resPlayers.data);
        **/
        response.send(resPlayers.data);


    }).catch(e => {
        response.send(e);
    });

});

router.get('/players', (req, response) => {
    pool.query('SELECT * FROM player', (error, result) => {
        if (error) throw error;
        response.send(result);
    });
});

module.exports = router;
