const { Pool } = require('pg');

let connect = async function () {
  try {
    if (global.connection) {
      return Promise.resolve(global.connection);
    }

    const pool = new Pool({
     connectionString:'postgres://dcfxefmr:InKsqLt_twa31O1IkLOBiC6gq98z-BL8@silly.db.elephantsql.com/dcfxefmr'
    });

    global.connection = pool;
    return Promise.resolve(pool);
  } catch (error) {
    console.error('Erro ao estabelecer a conexão:', error);
    throw error;
  }
};

module.exports = { connect };
