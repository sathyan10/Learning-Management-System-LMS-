import express from "express";
import mysql from "mysql";
import cors from "cors";

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "sathyan123",
  database: "lms",
});

app.get("/", (req, res) => {
  res.json("hello");
});

app.get("/books", (req, res) => {
  const q = "SELECT * FROM books";
  db.query(q, (err, data) => {
    if (err) {
      console.log(err);
      return res.json(err);
    }
    return res.json(data);
  });
});

app.post("/books", (req, res) => {
  const q = "INSERT INTO books(`id`, `name`, `author`, `date`,`pages`,`category`) VALUES (?)";

  const values = [
    req.body.id,
    req.body.name,
    req.body.author,
    req.body.date,
    req.body.pages,
    req.body.category,
  ];

  db.query(q, [values], (err, data) => {
    if (err) return res.send(err);
    return res.json(data);
  });
});

app.delete("/books/:id", (req, res) => {
  const bookId = req.params.id;
  const q = " DELETE FROM books WHERE id = ? ";

  db.query(q, [bookId], (err, data) => {
    if (err) return res.send(err);
    return res.json(data);
  });
});

app.put("/books/:id", (req, res) => {
  const bookId = req.params.id;
  const q = "UPDATE books SET `name` = ?, `author` = ?, `date` = ?, `pages` = ?, `category` = ? WHERE id = ?";

  const values = [
    req.body.name,
    req.body.author,
    req.body.date,
    req.body.pages,
    req.body.category,
    bookId, // Place bookId at the end since it corresponds to WHERE id = ?
  ];

  db.query(q, values, (err, data) => {
    if (err) return res.send(err);
    return res.json(data);
  });
});


app.listen(8800, () => {
  console.log("Connected to backend.");
});