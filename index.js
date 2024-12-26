const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    console.log("Headers: ", req.headers); // Exibe os headers recebidos no console
    res.send('Hello World!');
});

app.listen(port, () => {
    console.log(`API rodando em http://localhost:${port}`);
});
