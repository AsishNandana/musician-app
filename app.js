const express = require('express');
const path = require('path');
const store = require('./store/datastore');
const initialStoreData = require('./store/data');
const Musician = require('./models/musician');
const musicianRoutes = require('./routes/musician');

const app = express();
const port = process.env.PORT || 3001;

// include routes
app.use('/musician', musicianRoutes);

app.use(express.static('public'));

// Index route
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'client/build/index.html'));
});

// initialize store
const musician = new Musician(store);
musician.initStore(initialStoreData);
app.locals.musician = musician;

// Duplicate block starts
const musician2 = new Musician(store);
musician2.initStore(initialStoreData);
app.locals.musician2 = musician2;
// Duplicate block ends

// start server
const server = app.listen(port, () => {
  console.log("Server started on port " + port);
});

// Duplicate block starts
const server2 = app.listen(port, () => {
  console.log("Server started on port " + port);
});
// Duplicate block ends

module.exports = server;
