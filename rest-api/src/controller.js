import {pool} from './database.js';

class LibrosController{

    async getAll(req,res) {
        const [result] = await pool.query('SELECT * FROM Libros');
        res.json(result);
    }

    async getOne(req,res) {
        const id = req.params.id;
        const [result] = await pool.query('SELECT * FROM Libros WHERE id = ?', [id]);

        if (result.length === 0){
            return res.status(404).json({ error: 'Libro no encontrado' });
        }
        res.json(result[0]);
    }

    async add(req, res) {
        const libro = req.body;
        const [result] = await pool.query(`INSERT INTO Libros (nombre, autor, categoria, año_publicacion, ISBN) VALUES (?, ?, ?, ?, ?)`, [libro.nombre, libro.autor, libro.categoria, libro.año_publicacion, libro.ISBN]);
        res.json({'Id insertado': result.insertId})
    }

    async delete(req, res) {
        const libro = req.body;
        const [result] = await pool.query(`DELETE FROM Libros WHERE ISBN = (?)`, [libro.ISBN]);
        res.json({'Registro borrado': result.affectedRows}); 
    }

    async update(req, res) {
        const libro = req.body;
        const [result] = await pool.query(`UPDATE Libros SET nombre=(?), autor=(?), categoria=(?), año_publicacion=(?), ISBN=(?) WHERE id=(?)`, [libro.nombre, libro.autor, libro.categoria, libro.año_publicacion, libro.ISBN, libro.id]);
        res.json({'Registros cambiados': result.changedRows});
    }
}

export const libro = new LibrosController();