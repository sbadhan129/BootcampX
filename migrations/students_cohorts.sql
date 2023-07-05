CREATE TABLE cohorts (
                      id SERIAL PRIMARY KEY NOT NULL,
                      name VARCHAR(100) NOT NULL, 
                      start_date DATE,
                      end_date DATE
                      );

CREATE TABLE students (

   id SERIAL PRIMARY KEY NOT NULL,
   name VARCHAR(100) NOT NULL, 
   email VARCHAR(150), 
   phone VARCHAR(15), 
   github VARCHAR(150),
   start_date DATE, 
   end_date DATE,
   cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
    );