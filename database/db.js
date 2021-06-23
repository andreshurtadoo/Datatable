const mysql = require('mysql');
const conexion = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'bdd'
});

conexion.connect( (error) => {
    if(error) throw error;
    console.log('Conectado a la Bd MySql');
})

module.exports = conexion;