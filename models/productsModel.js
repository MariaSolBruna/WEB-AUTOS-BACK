const pool = require("../database");


const getProducts = async () => {
    try {
        const query = "select * from listadoautos2";
        const rows = await pool.query(query);
        return rows;

    } catch (error) {
        console.log(error);
    }
};

const getOneProduct = async (Modelo) => {
  try {
      const query = "Select * from listadoautos2 where Modelo = ?";
      const row = await pool.query(query, [Modelo]);
      return row;

  } catch (error) {
      console.log(error);
  }
};


const addProduct = async (data) => {
    try {
        const query = "insert into listadoautos2 set ?";
        const row = await pool.query(query, [data]);
        return row;
    } catch (error) {
        console.log(error);
    }
};

const deleteProduct = async (Modelo) => {
    const query = "delete from listadoautos2 where Modelo = ?";
    const row = await pool.query(query, [Modelo]);
    return row;

};

async function modifyProduct(data, Modelo) {
    try {
        const query = "update listadoautos2 set ? where Modelo = ? ";
        const row = await pool.query(query, [data, Modelo]);
        return row;
    } catch (error) {
        
    }
};


module.exports = { getProducts, addProduct, getOneProduct, deleteProduct, modifyProduct };