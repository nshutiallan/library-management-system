
CREATE TABLE Authors (
    AuthorID NUMBER PRIMARY KEY,
    AuthorName VARCHAR2(100) NOT NULL
);


CREATE TABLE Books (
    BookID NUMBER PRIMARY KEY,
    Title VARCHAR2(100),
    Genre VARCHAR2(50),
    YearPublished NUMBER
);

CREATE TABLE AuthorsBooks (
    AuthorID NUMBER,
    BookID NUMBER,
    PRIMARY KEY (AuthorID, BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);


CREATE TABLE Members (
    MemberID NUMBER PRIMARY KEY,
    MemberName VARCHAR2(100),
    JoinDate DATE
);


CREATE TABLE Borrowing (
    BorrowID NUMBER PRIMARY KEY,
    MemberID NUMBER,
    BookID NUMBER,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Authors (AuthorID, AuthorName) VALUES (1, 'George muhizi');
INSERT INTO Authors (AuthorID, AuthorName) VALUES (2, 'mugabo prince');


INSERT INTO Books (BookID, Title, Genre, YearPublished) VALUES (101, '1984', 'Dystopian', 1949);
INSERT INTO Books (BookID, Title, Genre, YearPublished) VALUES (102, 'Harry Potter and the Philosopher''s Stone', 'Fantasy', 1997);
INSERT INTO AuthorsBooks (AuthorID, BookID) VALUES (1, 101);
INSERT INTO AuthorsBooks (AuthorID, BookID) VALUES (2, 102); 
INSERT INTO Members (MemberID, MemberName, JoinDate) VALUES (1, 'Alice', TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO Borrowing (BorrowID, MemberID, BookID, BorrowDate, ReturnDate) 
VALUES (1, 1, 101, TO_DATE('2024-09-01', 'YYYY-MM-DD'), NULL); 


DELETE FROM Books WHERE BookID = 101;

SELECT Members.MemberName, Books.Title, Borrowing.BorrowDate, Borrowing.ReturnDate
FROM Borrowing
JOIN Members ON Borrowing.MemberID = Members.MemberID
JOIN Books ON Borrowing.BookID = Books.BookID;

ALTER TABLE Members ADD Email VARCHAR2(100);

GRANT SELECT ON Books TO Public;

INSERT INTO Borrowing (BorrowID, MemberID, BookID, BorrowDate) 
VALUES (2, 1, 102, TO_DATE('2024-09-25', 'YYYY-MM-DD'));


COMMIT;

ROLLBACK;


UPDATE Members SET MemberName = 'Alicia' WHERE MemberID = 1;










