"use strict"
const express = require("express");
const cloudinary = require("cloudinary").v2;
const util = require("util");
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);
const router = express.Router();
const productsModel = require("../models/productsModel");

router.get("/", async (req, res) => {
    const data = await productsModel.getProducts();
    const products = data.map((product) => {
        const imageURL = cloudinary.url(product.Imagen, {
            width: 300,
            height: 130,
            crop: "fill",
        });
        return { ...product, imageURL };
    });
 //   console.log(data);
    res.render("index", {products});    
});

router.get("/addItem", (req, res) => {
    res.render("addItem");
});

router.post("/addItem", async (req, res) => {
    let imageFile = req.files.Imagen;
    const img_id = (await uploader (imageFile.tempFilePath)).public_id;
    
    const { Marca, Modelo, Versión, Año, Combustible, Motor, Precio } = req.body;
    
    const newItem = { Marca, Modelo, Versión, Año, Combustible, Motor, Precio, Imagen: img_id };
    
    await productsModel.addProduct(newItem);
    
    res.redirect("/");
});

router.get("/handleEdit/:Modelo", async (req, res) => {
    const row = await productsModel.getOneProduct(req.params.Modelo)
    const product = {
        Imagen: row[0].Imagen,
        Marca: row[0].Marca,
        Modelo: row[0].Modelo,
        Versión: row[0].Versión,
        Año: row[0].Año,
        Combustible: row[0].Combustible,
        Motor: row[0].Motor,
        Precio: row[0].Precio,
    };
    res.render("editItem", {product});
});

router.post("/editProduct", async (req, res) => {
     let img_id = null;
    if(!req.files) {
        img_id = req.body.previousImage;
    } else {
        const row = await productsModel.getOneProduct(req.body.Modelo);
        await destroy(row[0].Imagen);
        const imageFile = req.files.Imagen;
        img_id = (await uploader(imageFile.tempFilePath)).public_id;
    }

    const data = {
        
        Modelo: req.body.Modelo,
        Marca: req.body.Marca,
        Versión: req.body.Versión,
        Año: req.body.Año,
        Combustible: req.body.Combustible,
        Motor: req.body.Motor,
        Precio: req.body.Precio,
        Imagen: img_id,
    };
    await productsModel.modifyProduct(data, data.Modelo);
    res.redirect("/"); 
});


router.get("/deleteProduct/:Modelo", async (req, res) => {
    const row = await productsModel.getOneProduct(req.params.Modelo);
    await destroy (row[0].Imagen);
    await productsModel.deleteProduct(req.params.Modelo);
    res.redirect("/");
});


module.exports = router;