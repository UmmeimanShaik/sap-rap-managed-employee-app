# SAP RAP Managed Scenario – Employee App

This repository contains a simple SAP RAP Managed Scenario application built using ABAP Development Tools (ADT) in Eclipse.

The project demonstrates how to create a basic Employee CRUD Fiori Elements app using the RESTful Application Programming Model (RAP) with a managed implementation.

---

## What this project shows

- End-to-end RAP managed scenario
- SAP-handled CRUD operations (Create, Read, Update, Delete)
- Automatic Fiori Elements UI generation
- Clean structure suitable for beginners

---

## Business Use Case

A simple Employee Management application with the following fields:

- Employee ID  
- Employee Name  
- Employee Address  
- Department ID  

---

## Development Environment

- ABAP Development Tools (ADT) in Eclipse  
- SAP BTP – ABAP Environment  

All objects were created manually in Eclipse, not generated from templates.

---

## Implementation Steps

### 1. Database Table
**Table:** `ZTB_RAP_EMP_887`  
Stores employee master data.

---

### 2. Data Generation Class
**Class:** `ZCL_GENERATE_DATA_RAP_EMP_887`  

Used only to insert sample data into the table for testing.  
This step is optional.

---

### 3. Root CDS View Entity
**View Entity:** `ZI_RAP_EMP_887`

- Acts as the root entity
- Selects data from the employee table
- Forms the RAP business object

---

### 4. Metadata Extension (UI Annotations)
**Metadata Extension:** `ZI_ME_RAP_EMP_887`

Defines:
- List Report columns
- Object Page layout
- Header information and facets

Fiori UI is generated automatically using these annotations.

---

### 5. Behavior Definition (Managed)
CRUD operations are handled by SAP.

```abap
managed;
define behavior for ZI_RAP_EMP_887
persistent table ZTB_RAP_EMP_887
lock master
{
  create;
  update;
  delete;
}
```

---

### 6. Service Definition

Exposes the CDS entity as a RAP service.

---

### 7. Service Binding

- Protocol: OData V2
- Service is published and previewed
- Fiori Elements app launches automatically

---

## Application Features

- View employee list
- Create new employee
- Edit employee details
- Delete employee records

All without writing UI code.

---

## Learning Outcome

After completing this project, you will understand:

- RAP managed flow from table to UI
- How CDS, behavior, and service work together
- How Fiori Elements apps are generated
- Basics before moving to unmanaged RAP

---

## Next Improvements

- Add validations in behavior
- Add authorization checks
- Implement unmanaged RAP scenario
- Add custom actions

---

## Author

Sri Vaishnavi Bhaskara

Built as a hands-on learning project using SAP RAP.
