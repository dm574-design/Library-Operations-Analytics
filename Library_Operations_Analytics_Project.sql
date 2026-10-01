CREATE DATABASE library_operations_analytics;

USE library_operations_analytics;

CREATE TABLE library_operations (
    record_id INT PRIMARY KEY,
    month DATE,
    branch VARCHAR(50),
    patron_age_group VARCHAR(20),
    material_type VARCHAR(50),
    program_type VARCHAR(50),
    checkouts INT,
    program_attendance INT,
    computer_sessions INT,
    wifi_sessions INT,
    reference_questions INT,
    new_library_cards INT,
    high_activity_flag VARCHAR(3)
);

SELECT COUNT(*) AS total_records
FROM library_operations;

SELECT
    branch,
    SUM(checkouts) AS total_checkouts
FROM library_operations
GROUP BY branch
ORDER BY total_checkouts DESC;

SELECT
    program_type,
    SUM(program_attendance) AS total_attendance
FROM library_operations
GROUP BY program_type
ORDER BY total_attendance DESC;

SELECT
    material_type,
    SUM(checkouts) AS total_checkouts
FROM library_operations
GROUP BY material_type
ORDER BY total_checkouts DESC;

SELECT
    branch,
    SUM(computer_sessions) AS total_computer_sessions
FROM library_operations
GROUP BY branch
ORDER BY total_computer_sessions DESC;

SELECT
    branch,
    SUM(wifi_sessions) AS total_wifi_sessions
FROM library_operations
GROUP BY branch

SELECT
    branch,
    SUM(new_library_cards) AS total_new_library_cards
FROM library_operations
GROUP BY branch
ORDER BY total_new_library_cards DESC;

SELECT
    branch,
    SUM(reference_questions) AS total_reference_questions
FROM library_operations
GROUP BY branch
ORDER BY total_reference_questions DESC;

SELECT
    branch,
    COUNT(*) AS high_activity_records
FROM library_operations
WHERE high_activity_flag = 'Yes'
GROUP BY branch
ORDER BY high_activity_records DESC;

SELECT
    patron_age_group,
    SUM(checkouts) AS total_checkouts
FROM library_operations
GROUP BY patron_age_group
ORDER BY total_checkouts DESC;

SELECT
    month,
    SUM(checkouts) AS total_checkouts
FROM library_operations
GROUP BY month
ORDER BY month;

SELECT
    branch,
    SUM(checkouts) AS total_checkouts,
    SUM(program_attendance) AS total_program_attendance,
    SUM(computer_sessions) AS total_computer_sessions,
    SUM(wifi_sessions) AS total_wifi_sessions,
    SUM(reference_questions) AS total_reference_questions,
    SUM(new_library_cards) AS total_new_library_cards
FROM library_operations
GROUP BY branch
ORDER BY total_checkouts DESC;


ORDER BY total_wifi_sessions DESC;