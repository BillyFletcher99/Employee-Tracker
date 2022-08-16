USE employeeDataBase;

/* Adding rows for data table Department Names */

INSERT INTO Department_Name
VALUE ("Sales");
INSERT INTO (Department_Name)
VALUE ("Engineering");
INSERT INTO (Department_Name)
VALUE ("Finance");
INSERT INTO (Department_Name)
VALUE ("Legal");

/* Adding rows for data table Role */

INSERT INTO Role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 135000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 150000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Attorney", 200000, 4);

/* Adding rows for data table Employees */

INSERT INTO Employees (First_Name, Last_Name, Role_ID, Manager_ID)
VALUES ("Brian", "Wizalski", 2, 3556);
INSERT INTO employee (First_Name, Last_Name, Role_ID, Manager_ID)
VALUES ("Zella", "Arwin", 1, 1001);
INSERT INTO employee (First_Name, Last_Name, Role_ID, Manager_ID)
VALUES ("Richard", "Pardeep", 4, null);
INSERT INTO employee (First_Name, Last_Name, Role_ID, Manager_ID)
VALUES ("Patrick", "Barley", 3, null);
INSERT INTO employee (First_Name, Last_Name, Role_ID, Manager_ID)
VALUES ("Rachel", "RosenBerg", 2, null);
INSERT INTO employee (First_Name, Last_Name, Role_ID, Manager_ID)
VALUES ("Izaya", "Kowaliski", 1, null);
INSERT INTO employee (First_Name, Last_Name, Role_ID, Manager_ID)
VALUES ("Tiff", "Romanov", 2, 7778);