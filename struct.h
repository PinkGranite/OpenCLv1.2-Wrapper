typedef struct Student
{
    int id;
    double salary;
}Student;

typedef struct 
{
    Student *sts[10];
}Teacher;

typedef struct
{
    int length;
    Student *sts;
}Super;