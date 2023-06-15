const { Pool } = require('pg');

let connect = async function () {
  try {
    if (global.connection) {
      return Promise.resolve(global.connection);
    }

    const pool = new Pool({
     connectionString:'postgres://mleehpay:2InLhIEXFvoR8pnJJZWXmc4Jz1BPm1Em@babar.db.elephantsql.com/mleehpay'
    });

    global.connection = pool;
    return Promise.resolve(pool);
  } catch (error) {
    console.error('Erro ao estabelecer a conexão:', error);
    throw error;
  }
};

module.exports = { connect };
