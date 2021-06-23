const conexion = require('../database/db');


// CREATE
exports.save = (req, res) => {
    const nombre = req.body.nombre;
    const edad = req.body.edad;
    const pais = req.body.pais;
    const posicion = req.body.posicion;
    const id = req.body.liga;
    conexion.query('INSERT INTO jugadores SET ?', {Nombre:nombre, Edad:edad, Pais:pais, Posicion:posicion, COD_Equipo:id, Status:1}, (error, results) => {
        if(error){
            console.log(error);
        }else{
            res.redirect('/');
        }
    });
};


// UPDATE
exports.update = (req, res) => {
    const id = req.body.id;
    const nombre = req.body.nombre;
    const edad = req.body.edad;
    const pais = req.body.pais;
    const posicion = req.body.posicion;
    const cod = req.body.liga;
    conexion.query('UPDATE jugadores SET ? WHERE ID=?', [{Nombre:nombre, Edad:edad, Pais:pais, Posicion:posicion, COD_Equipo:cod, Status:1}, id], (error, results) => {
        if(error){
            console.log(error);
        }else{
            res.redirect('/');
        }
    });
};

