const express = require('express');
const router = express.Router();

const conexion = require('./database/db');


// RUTA VER REGRISTROS ACTIVOS
router.get('/', (req, res) => {
    conexion.query('SELECT * FROM jugadores WHERE Status = 1', (error, result) => {
        if(error) throw error;
        res.render('index', {resultados: result});
    });
});

// RUTA VER REGISTROS DESACTIVOS 
router.get('/eliminados', (req, res) => {
    conexion.query('SELECT * FROM jugadores WHERE Status = 0', (error, result) => {
        if(error) throw error;
        res.render("eliminados", {resultados: result});
    })
})

// RUTA CREAR REGISTROS
router.get('/create', (req, res) => {
    res.render('create');
});

// RUTA EDITAR REGISTROS
router.get('/edit/:id', (req, res) => {
    const id = req.params.id;
    conexion.query('SELECT * FROM jugadores WHERE ID=?', [id], (error, results) => {
        if(error) throw error;
        res.render('edit', {user:results[0]});
    });

});

// RUTA PARA DESACTIVAR REGITRTOS, STATUS 0
router.get('/desactive/:id', (req, res) => {
    const id = req.params.id;
    conexion.query('UPDATE jugadores SET Status = 0 WHERE ID IN (?)',[id.split(',')], (error, results)=>{
        if(error) console.log(error);
        res.redirect('/');       
    })
});

// RUTA PARA ELIMINAR REGISTROS, STATUS 2
router.get('/delete2/:id', (req, res) => {
    const id = req.params.id;
    conexion.query('UPDATE jugadores SET Status = 2 WHERE ID IN (?)',[id.split(',')], (error, results)=>{
        if(error)console.log(error);
        res.redirect('/eliminados');    
    })
});

// RUTA PARA RECUPERAR REGISTROS DESACTIVADOS
router.get('/recover/:id', (req, res) => {
    const id = req.params.id;
    conexion.query('UPDATE jugadores SET Status = 1 WHERE ID IN (?)', [id.split(',')], (error, results) => {
        if(error) throw error;
        res.redirect('/eliminados')
    })
})


const crud = require('./controller/crud');
router.post('/save', crud.save);
router.post('/update', crud.update);   

module.exports = router;