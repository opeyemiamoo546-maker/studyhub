-- SchoolPilot future production schema reference only.
-- The current browser demo does not connect to this database.
CREATE TABLE schools (
 id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(160) NOT NULL,
 motto VARCHAR(255) NULL,
 email VARCHAR(190) NULL,
 phone VARCHAR(40) NULL,
 address TEXT NULL,
 brand_color CHAR(7) NOT NULL DEFAULT '#2457d6',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE users (
 id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 school_id BIGINT UNSIGNED NOT NULL,
 full_name VARCHAR(160) NOT NULL,
 email VARCHAR(190) NOT NULL,
 password_hash VARCHAR(255) NOT NULL,
 role ENUM('owner','admin','teacher','student','parent') NOT NULL,
 is_active BOOLEAN NOT NULL DEFAULT TRUE,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 UNIQUE KEY uq_school_email (school_id,email),
 FOREIGN KEY (school_id) REFERENCES schools(id)
);
CREATE TABLE students (
 id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 school_id BIGINT UNSIGNED NOT NULL,
 admission_no VARCHAR(60) NOT NULL,
 full_name VARCHAR(160) NOT NULL,
 class_name VARCHAR(40) NOT NULL,
 gender VARCHAR(20) NULL,
 status ENUM('active','pending','graduated','withdrawn') NOT NULL DEFAULT 'active',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 UNIQUE KEY uq_school_admission (school_id,admission_no),
 FOREIGN KEY (school_id) REFERENCES schools(id)
);
CREATE TABLE subjects (
 id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 school_id BIGINT UNSIGNED NOT NULL,
 name VARCHAR(100) NOT NULL,
 FOREIGN KEY (school_id) REFERENCES schools(id),
 UNIQUE KEY uq_school_subject (school_id,name)
);
CREATE TABLE assessments (
 id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 school_id BIGINT UNSIGNED NOT NULL,
 title VARCHAR(180) NOT NULL,
 subject_id BIGINT UNSIGNED NOT NULL,
 class_name VARCHAR(40) NOT NULL,
 term VARCHAR(40) NOT NULL,
 session_name VARCHAR(30) NOT NULL,
 status ENUM('draft','published','closed') NOT NULL DEFAULT 'draft',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (school_id) REFERENCES schools(id),
 FOREIGN KEY (subject_id) REFERENCES subjects(id)
);
CREATE TABLE assessment_scores (
 id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 assessment_id BIGINT UNSIGNED NOT NULL,
 student_id BIGINT UNSIGNED NOT NULL,
 ca_score DECIMAL(5,2) NOT NULL DEFAULT 0,
 exam_score DECIMAL(5,2) NOT NULL DEFAULT 0,
 UNIQUE KEY uq_assessment_student (assessment_id,student_id),
 FOREIGN KEY (assessment_id) REFERENCES assessments(id),
 FOREIGN KEY (student_id) REFERENCES students(id)
);
