-- Table for employee personal/job info
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    age INT,
    attrition VARCHAR(10),
    business_travel VARCHAR(50),
    department VARCHAR(50),
    education INT,
    education_field VARCHAR(50),
    gender VARCHAR(10),
    job_level INT,
    job_role VARCHAR(50),
    marital_status VARCHAR(20),
    over_time VARCHAR(10),
    performance_rating INT,
    standard_hours INT,
    stock_option_level INT
);

-- Table for employee metrics
CREATE TABLE employee_metrics (
    metric_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    daily_rate INT,
    distance_from_home INT,
    environment_satisfaction INT,
    hourly_rate INT,
    job_involvement INT,
    job_satisfaction INT,
    monthly_income INT,
    monthly_rate INT,
    num_companies_worked INT,
    percent_salary_hike INT,
    relationship_satisfaction INT,
    total_working_years INT,
    training_times_last_year INT,
    work_life_balance INT,
    years_at_company INT,
    years_in_current_role INT,
    years_since_last_promotion INT,
    years_with_curr_manager INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
