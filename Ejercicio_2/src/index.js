const express = require('express');
const bodyParser = require('body-parser');
const app = express();

// Settings
app.set('port', 8080);

// Middlewares
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
 
// parse application/json
app.use(bodyParser.json())

// Routes
app.use(require('./routes/empresa'));

// Server listen
app.listen(app.get('port'), () => {
  console.log(`Server on port ${app.get('port')}`);
});