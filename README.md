# SchoolPilot — School Management Demo

A reusable responsive school-management demonstration built for presenting a proposed digital platform to Nigerian secondary schools.

## Included modules
- Admin overview with school statistics and academic analytics.
- School identity customisation: name, motto, contacts, address, academic session, term, logo preview and primary colour.
- Student directory with search, class filter, add-student workflow and CSV export.
- Teacher directory with add-teacher workflow.
- Class and subject overview.
- Examination score entry and automatic grade calculation.
- WAEC-style CBT practice with multiple-choice questions and instant score feedback.
- Performance intelligence and subject insights.
- School announcements.

## Run locally
1. Download or clone the repository.
2. Put the folder in your PHP web root (for XAMPP, the htdocs folder).
3. Open the project through a PHP-enabled web server, for example http://localhost/studyhub/.

A PHP server can also be started from the project directory with: php -S localhost:8000

No database is required for this demo. Records and school branding are saved in the current browser's localStorage.

## Personalise for a school
Open School profile, change the school name and details, select its brand colour, upload a logo preview and save. The dashboard identity updates immediately. Changes are browser-local and do not alter the source files.

## Important limitations
This is a sales/demo prototype, not a production school information system. Sample data is stored in the current browser only. There is no authentication, server database, parent/student portal, fee payment, server-side examination security, backup or multi-school tenant isolation. Never enter real student personal information.

A production release needs a PHP/MySQL backend, role-based access control, password hashing, CSRF protection, audit logs, backups, secure CBT scheduling and marking, result approval workflows, tenant isolation and security/privacy testing.

## Structure
- index.php — application shell
- assets/css/app.css — responsive interface
- assets/js/app.js — demo interactions and local persistence
