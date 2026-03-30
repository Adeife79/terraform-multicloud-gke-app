const express = require('express');
const app = express();
const port = 8087;
app.get('/', (req, res) => res.send('Hello, Docker!'));
app.listen(port, () => console.log(`App running on port http://localhost:${port}`));
    