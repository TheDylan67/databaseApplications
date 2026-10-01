**Before you start:** rename this file to `unit3b_lastname.md`, using your own last name. Read `unit3b_Walkthrough.md` first. Commit and push when you're done.

**Name:**

---

# Unit 3b — Keys and Relationships

## 1. Which key?

For each table, decide: is the primary key **natural** (a real-world value that already exists, like an email) or **surrogate** (a made-up ID number)? Is it **composite** (more than one column)?

| Table | Primary key | Natural or surrogate? | Composite? |
|---|---|:-:|:-:|
| `teams` in `nba_5seasons.db` | `team_id` | | |
| `player_season_stats` in `nba_5seasons.db` | | | |
| A US state table | `state_abbrev` (OH, MI, PA…) | | |
| The school's student records | `student_id` | | |

**a.** The school could use a student's full name as the primary key instead of `student_id`. Give one reason that's a bad idea.

**Answer:**


## 2. What a foreign key promises

**b.** In `denormalized_demo.db`, `games.home_team_id` is a foreign key to `teams.team_id`. If someone tries to insert a game with `home_team_id = 99` and there is no team 99, what should the database do? What is that rule called?

**Answer:**
A database will refuse or reject the entry. This is called Referntial Integrity.

**c.** If team 6 were deleted from `teams`, what should happen to its rows in `games`? Name two different choices a designer could make.

**Answer:**
The designer chooses what hpappens when the foreign key is set up. Two common choices. Block the delte, Delete the games too

## 3. Sort the relationships

**Choose from:** One-to-one · One-to-many · Many-to-many

| # | Relationship | Type |
|:-:|---|---|
| 1 | One team → its games this season | |
| 2 | Students ↔ the courses they're enrolled in | |
| 3 | A person → their Social Security number | |
| 4 | A customer → their orders | |
| 5 | Movies ↔ the actors in them | |
| 6 | A country → its capital city | |

**d.** Pick either many-to-many row. Relational databases can't store a many-to-many directly. What table do you add, and what columns does it need?

**Answer:**


**e.** Not every database uses tables and keys. In a **graph** database (like the one behind Instagram's follow list), the same "who follows whom" relationship is stored as what two things? In a **key-value** store, how is a relationship handled?

**Answer:**
graph and key value

## 4. Your first ER diagram

Here is the `denormalized_demo.db` fixed version as a Mermaid diagram. It already renders — push and look at it on GitHub or preview it in VS Code.

```mermaid
erDiagram
    TEAMS ||--o{ GAMES : "home team in"
    TEAMS ||--o{ GAMES : "away team in"
    TEAMS {
        int team_id PK
        string full_name
        string city
        string state
    }
    GAMES {
        int game_id PK
        string game_date
        int home_team_id FK
        int away_team_id FK
        int home_pts
        int away_pts
    }
```

**Now make your own, using AI.** Follow the four steps in the walkthrough: plan it, prompt the AI, proof it, test it. A school schedule has these entities: **STUDENTS**, **COURSES**, **TEACHERS**, and an **ENROLLMENTS** junction table. Rules:

- One teacher teaches many courses; each course has one teacher.
- Students take many courses; courses have many students. (That's what ENROLLMENTS is for.)

Give every entity a primary key and at least two attributes. Mark the foreign keys.

```mermaid
erDiagram
    %% replace this comment with your diagram
erDiagram
    TEACHERS ||--o{ COURSES : "teaches"
    STUDENTS ||--o{ ENROLLMENTS : "enrolls in"
    COURSES ||--o{ ENROLLMENTS : "has"

    STUDENTS {
        int student_id PK
        string name
        string email
    }

    TEACHERS {
        int teacher_id PK
        string name
        string department
    }

    COURSES {
        int course_id PK
        string title
        int teacher_id FK
    }

    ENROLLMENTS {
        int student_id FK
        int course_id FK
        string grade
    }
```

**Paste the prompt you gave the AI.** If you used a PowerPoint picture, add the picture to your repo too.

```text
Create a Mermaid ER diagram for a school schedule with entities STUDENTS, COURSES, TEACHERS, and ENROLLMENTS. TEACHERS has a on to many relationship with COURSES. STUDENTS and COURSES have a many to many relationship joined by ENROLLMENTS. Include primary keys, foreign keys, and two attributes per entity.
```

**f.** Which entity has two foreign keys? What should its primary key be?

**Answer:**

enrollments
**g.** What did you have to fix in the AI's diagram? If you didn't change anything, what did you check to make sure it was right?

**Answer:**
I ran it through another ai chat to make sure it was correct like a double check or reread

## Closing 3b — Vocabulary

| Term | Your definition |
|---|---|
| Entity | |
| Attribute | |
| Natural key | |
| Surrogate key | |
| Composite key | |
| Referential integrity | |
| Junction table | |
| Cardinality | |

**Partner check:** trade files. Read your partner's Mermaid code out loud, one relationship line at a time, as English ("one teacher, many courses"). If it doesn't read right, one of you has the crow's foot on the wrong end.