const { Sequelize } = require('sequelize');

const koneksi = new Sequelize('sidb', 'root', '12345678',{
    host : 'localhost',
    dialect : 'mysql'
});

try {
    koneksi.authenticate();
    koneksi.sync({ alter: true });
    console.log('Connected to Database');
} catch (error) {
    console.error('Failed to connect Database :', error);
}

module.exports=koneksi;