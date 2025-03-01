# Pet Shelter Manager

## Introduction

Pet Shelter Manager is a comprehensive application designed to streamline the management of animal shelters. Built using **Java Swing** and **MySQL**, this application enables shelter staff to efficiently manage animal intake, adoptions, and shelter resources. The app includes features for tracking animal profiles, adoption records, veterinary care, and shelter finances. It is designed to be intuitive and user-friendly, catering to three types of users: **clients**, **donors**, and **shelter owners**.

<img width="500" alt="Screenshot 2024-01-13 222638" src="https://github.com/user-attachments/assets/396debd5-df0a-43f2-a8fb-62f46fe04deb" />

<img width="443" alt="Screenshot 2024-01-13 222954" src="https://github.com/user-attachments/assets/7319f990-0488-423c-a6dd-8b197fe3f244" />



### Key Features:
- **Animal Profile Management**: Track medical history, breed, and adoption status.
- **Adoption Process Tracking**: Manage the adoption process seamlessly.
- **Donation Management**: Handle donations and track donor information.
- **Veterinary Care Tracking**: Maintain detailed veterinary records for each animal.
- **Shelter Resource Management**: Monitor shelter capacity, supplies, and finances.
- **MySQL Database Integration**: Ensures data persistence and efficient data management.

---


<img width="421" alt="Screenshot 2024-01-13 222847" src="https://github.com/user-attachments/assets/aaa4d161-58b3-4df0-a57c-be0566bd0ef9" />

<img width="490" alt="Screenshot 2024-01-13 222904" src="https://github.com/user-attachments/assets/5af7d736-36a6-48ac-9f4a-e1d28d207352" />

<img width="440" alt="Screenshot 2024-01-13 223101" src="https://github.com/user-attachments/assets/2875affe-af7b-48ca-b627-cdb1044c313d" />

<img width="325" alt="Screenshot 2024-01-13 223116" src="https://github.com/user-attachments/assets/b24d2ba9-0628-4e2d-9649-73c908646587" />


## Project Overview

### User Requirements

#### 1. **Adoption Requirements**:
   - The system must allow the registration of adoption information, including details about the new owners and the current status of the animal.

#### 2. **Supply Management**:
   - Efficient management of shelter supplies such as food, toys, and other necessities.

#### 3. **Veterinary Services**:
   - Maintain a detailed veterinary history for each animal and manage veterinary appointments.

### Constraints

#### 1. **Limited Financial Resources**:
   - Animal shelters often operate on limited budgets, requiring efficient management of donations and expenses.

#### 2. **Shelter Capacity**:
   - Physical limitations on the number of animals that can be housed at any given time.

---

<img width="346" alt="Screenshot 2024-01-13 223125" src="https://github.com/user-attachments/assets/16a31c12-c069-49ca-9746-2ad50d720638" />

<img width="337" alt="Screenshot 2024-01-13 223332" src="https://github.com/user-attachments/assets/ae631a4b-ec16-4bdc-a168-45810d75636a" />

<img width="224" alt="Screenshot 2024-01-13 223518" src="https://github.com/user-attachments/assets/4462b4e5-969d-46c4-97b1-3767c64865fc" />


## Database Design

### Entities and Attributes

The database is designed to model the following entities and their relationships:

1. **Shelter (Adapost)**:
   - Attributes: `id_adapost`, `nume_adapost`, `adresa_adapost`, `numar_locuri`.

2. **Owner (Proprietar)**:
   - Attributes: `id`, `nume`, `adresa`, `telefon`, `id_adapost` (FK).

3. **Location (Loc)**:
   - Attributes: `id_loc`, `nume_loc`, `stare` (available/occupied).

4. **Donor (Donator)**:
   - Attributes: `id`, `nume`, `adresa`, `telefon`.

5. **Donation (Donatie)**:
   - Attributes: `id_donatie`, `id_donator` (FK), `suma_donata`.

6. **Funds (Fonduri)**:
   - Attributes: `id_fond`, `intrari`, `cheltuieli`, `buget`.

7. **Animal (Animal)**:
   - Attributes: `id_animal`, `nume_animal`, `specie`, `id_loc` (FK), `id_adapost` (FK).

8. **Veterinary History (IstoricVeterinar)**:
   - Attributes: `id_istoric`, `detalii_veterinare`.

9. **Animal-Veterinary Relationship (AnimalIstoric)**:
   - Attributes: `id_animal` (FK), `id_istoric` (FK).

10. **Veterinary Clinic (CabinetVeterinar)**:
    - Attributes: `id_cabinet`, `nume_cabinet`, `adresa`, `telefon`.

11. **Supplies (Provizii)**:
    - Attributes: `id_provizie`, `nume_provizie`, `cantitate`.

12. **Inventory (Inventar)**:
    - Attributes: `id_inventar`, `id_adapost` (FK), `id_provizie` (FK), `cantitate`.

13. **Veterinarian (DoctorCabinet)**:
    - Attributes: `id_doctor`, `nume`, `id_cabinet` (FK), `telefon`.

14. **Client (Client)**:
    - Attributes: `id_client`, `nume`, `adresa`, `telefon`.

15. **Transaction (Tranzactii)**:
    - Attributes: `id_tranzactie`, `id_client` (FK), `id_animal` (FK), `suma`.

---

## Database Normalization

The database is normalized to **Third Normal Form (3NF)** to eliminate redundancy and ensure relational integrity. Each table is designed with a primary key and appropriate foreign keys to maintain data consistency.

---

## Implementation Details

### Technologies Used:
- **Backend**: Java 
- **Database**: MySQL
- **Frontend**: Java Swing

### Database Operations:
- **Triggers**: Automatically update funds and veterinary history.
- **Stored Procedures**: Handle operations like adding animals, updating details, and processing transactions.
- **Views**: Provide simplified access to complex queries (e.g., available spots, donation details).
- **Queries**: Retrieve data for animal profiles, adoption records, and financial summaries.

### Java Classes:
The application is structured into the following Java classes:
- `AdaugaAnimal`
- `AdoptionDialog`
- `AdoptionPage`
- `CreateAccount`
- `DonationDialog`
- `LogInCustomer`
- `LogInOwner`
- `LoginPage`
- `OwnerActions`
- `ShelterList`
- `ViewAnimalData`
- `ViewAvailableSpots`
- `ViewFunds`
- `ViewTransactions`

---

## Installation and Usage

### Tools Required:
1. **MySQL Workbench**:
   - Used for database management, including creating tables, triggers, and stored procedures.
2. **IntelliJ IDEA**:
   - Used for developing and running the Java Spring Boot application.

### Steps to Run the Project:
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo/Pet-Shelter-Manager.git

2. **Import SQL Scripts**:
   - Import the provided SQL scripts into MySQL Workbench to create the database and tables.

3. Configure the Application

**Update `application.properties`**:
   - Update the `application.properties` file with your MySQL database credentials.

4. Run the Application

1. **Open the Project**:
   - Open the project in IntelliJ IDEA.
2. **Run the Application**:
   - Run the `LoginPage` class to start the application.

---

## Security Features

- **Data Validation**: Ensures that only valid data is entered into the system.
- **Error Handling**: Displays error messages for failed login attempts or invalid inputs.
- **Confidentiality**: Protects personal data of donors, clients, and shelter owners.


<img width="438" alt="Screenshot 2024-01-13 222716" src="https://github.com/user-attachments/assets/bb4845a5-45e9-4399-a733-4070669a5575" />

<img width="400" alt="Screenshot 2024-01-13 222811" src="https://github.com/user-attachments/assets/2a71b2ce-8576-4ba3-8700-a2aa81eaf1f1" />


---

## Future Enhancements

1. **Online Store for Supplies**:
   - Allow shelter owners to purchase supplies directly through the application.
2. **Enhanced Reporting**:
   - Add detailed financial and operational reports for better decision-making.
3. **Mobile Application**:
   - Develop a mobile version of the application for easier access.

---

## Conclusion

The Pet Shelter Manager application is a robust solution for managing animal shelters efficiently. By leveraging Java Swing and MySQL, it provides a scalable and user-friendly platform for tracking animals, managing adoptions, and handling donations. The application is designed with future enhancements in mind, ensuring it can grow to meet the evolving needs of animal shelters.
