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
}

export const libro = new LibrosController();