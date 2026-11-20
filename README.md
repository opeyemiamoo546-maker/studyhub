# SchoolPilot — School Management Demo

A reusable, responsive school-management demonstration for presenting a proposed digital platform to Nigerian secondary schools.

## Demo modules
- Administrator workspace with school branding, student and teacher directories, classes, subjects, results, announcements and performance overview.
- Interactive teacher workspace with sample assigned classes, assignment creation, student submission review, grading and feedback, plus examination mark entry.
- Interactive student portal with report-card records, class assignments, submission workflow, teacher feedback, WAEC practice history and average score.
- WAEC-style practice bank across Mathematics, English Language, Biology, Chemistry, Physics and Economics.
- Timed subject practice and a post-test review for every question: the student's response, the correct option, a worked explanation and notes on why the distractors are incorrect. Completed practice attempts are saved in the browser and shown in the student learning history.
- School identity customisation, responsive layout and browser-local sample data.

## Run locally
1. Download or clone this repository.
2. Put the folder in a PHP web root (for XAMPP, the htdocs folder).
3. Open http://localhost/studyhub/ or run `php -S localhost:8000` from the project directory.

## Demo accounts
Use **Preview portals** in the top bar to switch between Administrator, Teacher and Student experiences. No passwords are needed because this is a guided demonstration, not real authentication.

## Demo data and limitations
All names, scores, teacher assignments, assignment submissions, teacher feedback, portal activity and practice questions are illustrative demo content. Data is saved in the current browser's localStorage. Teacher and student role previews share the same browser demo data and are not separate authenticated accounts. There is no live multi-user database, secure authentication, cross-device sync, server-side test security, official WAEC question licensing, parent account or payment integration. Do not enter real student personal information.

The question bank contains original WAEC-style practice questions, not a claim that these are official past questions. The explanations are educational notes written for this demo and should be reviewed by a qualified subject teacher before commercial or classroom use.

A production deployment would need PHP/MySQL persistence, password hashing, role-based access control, CSRF protection, tenant isolation, audit logs, backups, secure CBT scheduling and marking, result approval, privacy/security testing and a larger verified/licensed question bank.

## Structure
- `index.php` — PHP application shell
- `assets/css/app.css` — responsive interface and portal/review styling
- `assets/js/app.js` — demo workflows, sample bank and browser-local persistence
- `database/schema.sql` — starting database schema
