const express = require('express');
const router = express.Router();

const mysqlConnection  = require('../connection.js');

// GET all 'Empresas'
router.get('/', (req, res) => {
  mysqlConnection.query('SELECT empresa.id as id, empresa.rut as rut, empresa.razon as razon  FROM empresa', (err, rows, fields) => {
    if(!err) {
      res.json(rows);
    } else {
      console.log(err);
    }
  });  
});

// GET An 'Empresa'
router.get('/:id', (req, res) => {
  const { id } = req.params; 
  mysqlConnection.query('SELECT empresa.id as id, empresa.rut as rut, empresa.razon as razon  FROM empresa WHERE id = ?', [id], (err, rows, fields) => {
    if (!err) {
      res.json(rows[0]);
    } else {
      console.log(err);
    }
  });
});

// DELETE An 'Empresa'
router.delete('/:id', (req, res) => {
  const { id } = req.params;
  mysqlConnection.query('DELETE FROM empresa WHERE id = ?', [id], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Empresa Deleted'});
    } else {
      console.log(err);
    }
  });
});

// INSERT An 'Empresa'
router.post('/', (req, res) => {
  let rut = req.body.rut;
  let razon = req.body.razon;

  mysqlConnection.query('INSERT INTO empresa (rut, razon) VALUES (?, ?)', [rut, razon], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Empresa Added'});
    } else {
      console.log(err);
    }
  });

});

// UPDATE An 'Empresa'
router.put('/:id', (req, res) => {
  let rut = req.body.rut;
  let razon = req.body.razon;
  let id = req.params.id;

  mysqlConnection.query('UPDATE empresa set rut = ?, razon = ? WHERE id = ?', [rut, razon, id], (err, rows, fields) => {
    if(!err) {
      res.json({status: 'Empresa Updated'});
    } else {
      console.log(err);
    }
  });

});

module.exports = router;