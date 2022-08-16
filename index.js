require("console.table");
const mysql = require("mysql");
const inquirer = import("inquirer");

//MySQL connection
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    database: 'employeeDataBase',
    password: 'Your password here',
});

//Inital Prompt utilizing inqurier, gives user an array of choices they may choose from
function initalPrompt() {
    inquirer
    .prompt({
        Type: 'List',
        name: 'Task',
        Message: 'Please choose from the options',

        choices: [
            'View all Employees',
            'View Employees Specific to Department',
            'Add new Employee',
            'Update Existing Employee',
            'Update Employee Role',
            'Update Employee Salary',
            'Remove Employee',
            'Add new Role',
            'End task',
        ]
})
.then(function ({ task }) {
        switch (task) {
        case 'View all Employees':
             viewEmployee();
            break;

        case 'View Employees Specific to Department':
            viewEmployeeByDepartment();
            break;
    
        case 'Update Existing Employee':
            addEmployee();
            break;

        case 'Update Employee Salary':
            updateEmployeeSalary();
            break;

        case 'Remove Employee':
            removeEmployees();
            break;

        case 'Update Employee Role':
            updateEmployeeRole();
            break;

        case 'Add new Employee':
            addNewEmployee();
            break;

        case 'Add new Role':
            addRole();
            break;

        case 'End task':
            connection.end();
            break;
    }
  })};

//// VIEW ALL EMPLOYEES ////
function viewingEmployee() {
    console.log ('Viewing the Employees now.')
    viewAllEmployees = () => {
        connection.query(
        `SELECT employee.id, 
         employee.first_name, 
         employee.last_name, 
         role.title, 
         department.name AS department, 
         role.salary, 
         CONCAT(manager.first_name, ' ', manager.last_name)
        
        manager FROM employee m RIGHT JOIN employee e ON e.manager_id = m.employee_id 
        JOIN role ON e.role_id = role.role_id 
        JOIN department ON department.department_id = role.department_id ORDER BY e.employee_id ASC;`, 
        (err, res) => {
            if (err) throw err;
            console.table('\n', res, '\n');
            startApp();
        })
    }};

//// VIEW ALL MANAGERS ////