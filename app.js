const express = require('express');
const app = express();


app.get('/', (req,res) => {
    res.send("<html> <h1> welcome to version 2 </h1></html>");
})

app.get('/products', (req,res) =>{
    res.send([
        {
            productid: 101,
            specification: "bike"
        },
        {
            productid: 102,
            specification: "car"
        }
    ])
})

app.listen(3000, () => {
    console.log("server started");
})