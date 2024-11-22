# DBMS Semester Project

It is a locally hosted web application which aims to allow students to add requests for amenities in 
their respective hostel rooms. It operates with 2 interfaces: 

1. **Student Interface**
2. **Admin Interface**

Once logged in to the website, the page redirects you to the corresponding interface based on user need.

## Student Interface

The *student interface* has the student's point of view and gives the student access to request for a resource
using the `add request` function that allows a student to add a request to be seen by the admin to be approved 
or denied based on current resource availability.

## Admin Interface

The *admin interface* has the administrator's point of view and the admin has control over `approving` a request, 
`rejecting` a request and to update the hostel inventory `resources`.

Additionally, the site provides a home screen to see more data, it has a `maintenance log` which logs the history of every transaction and 
update that goes through into the database. 
We use google authentication to log in the user by analysing the gmail domain and grants user access to the website.

## Database Structure

The database system works using 5 tables as follows:
- `users`
- `room`
- `resources`
- `resourcerequests`
- `maintenancelog`

The table structure is described in detail below

### 1. Users Table

The `room` table has 3 attributes: 
- *`room_no (INT)`*
- *`capacity (INT)`*
- *`block_id (VARCHAR)`*

### 2. Resource Table 

The `resource` table has 5 attributes: 
- *`resource_id (INT)`*
- *`resource_name (VARCHAR)`*
- *`quantity (INT)`*
- *`price (INT)`*
- *`p_date (DATE)`*

### 3. Resource Requests Table

The `resourcerequests` table has 7 attributes:
- *`request_id`*
- *`room_no`*
- *`resource_id`*
- *`student_id`*
- *`quantity`*
- *`status`*
- *`request_date`*

### 4. Maintenance Log Table

The `maintenancelog` table has 5 attributes:
- *`log_id`*
- *`date_completed`*
- *`request_id`*
- *`student_id`*
- *`action_type`*

This table structure runs our database system. 
