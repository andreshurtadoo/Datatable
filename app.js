const { json } = require('express');
const express = require('express');
const app = express();
const port = 4500;

app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/public'));

app.use(express.urlencoded({extended:false}));
app.use(express(json));

// ruta archivo router
app.use('/', require('./router'));

app.get('/', (req, res) => {
    res.send('Hola Mundo');
})

app.listen(port, () => {
    console.log('Servidor OK!');
})