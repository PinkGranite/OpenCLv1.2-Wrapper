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

double helper_add(double salary) {
    return salary*10;
}

__kernel 
void addID(__global Student *sts) {
    int tid = get_global_id(0);
    sts[tid].salary = 0.01;
    sts[tid].salary = helper_add(sts[tid].salary);
}

__kernel
void addStudent(__global Teacher *teacher, __global Student *allStudents, int stdId) {
    size_t tid = get_global_id(0);  // 获取item的globalId
    teacher->sts[0] = allStudents + stdId;
    teacher->sts[0]->salary = 0.01;
}

__kernel
void superAdd(__global Super *super, __global Student *students, int length) {
    size_t tid = get_global_id(0);
    super->length = length;
    super->sts = students;
    for(int i = 0; i<length; ++i) {
        (super->sts+i)->salary = 0.01 * length;
    }
}

__kernel
void sumAll(__global int *data, __global int *result) {
    size_t tid = get_global_id(0);
    atomic_add(result, data[tid]);
}