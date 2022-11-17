const Pool = require("pg").Pool;
const pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "tpower_qap1",
    password: "Keyin2022",
    port: 5432,
});

// getUsers Complete
const getUsers = (request, response) => {
    const id = parseInt(request.query.name);

    pool.query(
        "SELECT * FROM tp_qap1db.passengers ORDER BY id ASC",
        (error, results) => {
            if (error) {
                throw error;
            }
            response.status(200).json(results.rows);
        }
    );
};

// getUserById Complete
const getUserById = (request, response) => {
    const id = parseInt(request.params.id);

    console.log("Id = " + id);

    pool.query(
        "SELECT * FROM tp_qap1db.passengers WHERE id = $1",
        [id],
        (error, results) => {
            if (error) {
                throw error;
            }
            response.status(200).json(results.rows);
        }
    );
};

// findUsersBySearch Complete
const findUsersBySearch = (request, response) => {
    const id = parseInt(request.query.id);
    const firstname = request.query.firstname;

    var sqlStmt = "SELECT * FROM tp_qap1db.passengers where ";

    if (!firstname == false) {
        sqlStmt += "firstname = '" + firstname + "' ";
        console.log("adding firstname = " + firstname);
    }

    if (!Number.isNaN(id)) {
        sqlStmt += "AND id = " + id;
        console.log("id = " + id);
    }

    console.log(sqlStmt);

    pool.query(sqlStmt, (error, results) => {
        if (error) {
            throw error;
        }
        response.status(200).json(results.rows);
    });
};

// createUser Complete
const createUser = (request, response) => {
    const { id, firstname, lastname, phn_num, city_id } = request.body;

    pool.query(
        "INSERT INTO tp_qap1db.passengers (id, firstname, lastname, phn_num, city_id) VALUES ($1, $2, $3, $4, $5)",
        [id, firstname, lastname, phn_num, city_id],
        (error, results) => {
            if (error) {
                throw error;
            }
            response
                .status(201)
                .send(`User added with ID: ${results.insertId}`);
        }
    );
};

// updateUser Complete
const updateUser = (request, response) => {
    const id = parseInt(request.params.id);
    const { firstname, lastname } = request.body;

    pool.query(
        "UPDATE tp_qap1db.passengers SET firstname = $1, lastname = $2 WHERE id = $3",
        [firstname, lastname, id],
        (error, results) => {
            if (error) {
                throw error;
            }
            response.status(200).send(`User modified with ID: ${id}`);
        }
    );
};

// deleteUser Complete
const deleteUser = (request, response) => {
    const id = parseInt(request.params.id);

    pool.query(
        "DELETE FROM tp_qap1db.passengers WHERE id = $1",
        [id],
        (error, results) => {
            if (error) {
                throw error;
            }
            response.status(200).send(`User deleted with ID: ${id}`);
        }
    );
};

module.exports = {
    getUsers,
    getUserById,
    findUsersBySearch,
    createUser,
    updateUser,
    deleteUser,
};
