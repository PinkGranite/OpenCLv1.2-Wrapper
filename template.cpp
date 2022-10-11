#include "toInclude.h"
#include <iostream>
#include "struct.h"

/*OpenCL Wrapper编程模板文件*/
int main() {
    std::string programDir;
    std::cout << "Please enter the programs file (relative): ";
    std::cin >> programDir;
    /** 1. 构建Context对象
     * 此时内部包含：
     *          1> platform
     *          2> devices
     *          3> context
     **/
    Context *cx = new Context(programDir);

    // 2. 注册命令队列
    cx->registerCommandQueue(0);

    // 3. 创建buffer对象
    cx->createBuffer("super", sizeof(Super), 1);
    cx->deviceMalloc("students1", sizeof(Student), 6);

    // 4. 填充buffer对象
    Student ss[16] = {{0, 0}};
    std::cout << "Before Kernel----------------------------------------" << std::endl;
    for (size_t i = 0; i < 16; i++)
    {
        ss[i].id = i;
        ss[i].salary = i*100;
        std::cout << "Student id: " << ss[i].id << ", salary: " << ss[i].salary << std::endl;
    }
    cx->WriteBuffer(0, "students1", ss);

    Super super[1] = {0};
    cx->WriteBuffer(0, "super", super);
    cx->WriteBuffer(0, "students1", ss);

    // 5. 设置kernel参数
    cx->setBufferAsKernelArg("superAdd", 0, POINTER, "super");
    cx->setBufferAsKernelArg("superAdd", 1, POINTER, "students1");
    cl_kernel kernel = cx->getKernelByName("superAdd");
    int length = 6;
    clSetKernelArg(kernel, 2, sizeof(int), &length);

    // 6. 执行kernel
    cx->execKernelNDRangeMode(0, "superAdd", {1, {1}, {1}, {0}});
    clFinish(cx->getCommandQueueByDeviceId(0));

    // 7. 读取结果
    cx->readBuffer(0, "students1", ss, true);

    // 8. 检验结果
    std::cout << "After Kernel 1 ----------------------------------------" << std::endl;
    for (size_t i = 0; i < 6; i++)
    {
        std::cout << "Student id: " << ss[i].id << ", salary: " << ss[i].salary << std::endl;
    }

    // 第二次实验
    cx->deviceMalloc("students2", sizeof(Student), 10);
    cx->deviceFree("students1");
    cx->WriteBuffer(0, "students2", ss);

    cx->setBufferAsKernelArg("superAdd", 0, POINTER, "super");
    cx->setBufferAsKernelArg("superAdd", 1, POINTER, "students2");
    length = 10;
    clSetKernelArg(kernel, 2, sizeof(int), &length);

    cx->execKernelNDRangeMode(0, "superAdd", {1, {1}, {1}, {0}});
    clFinish(cx->getCommandQueueByDeviceId(0));

    cx->readBuffer(0, "students2", ss, true);

    std::cout << "After Kernel 2 ----------------------------------------" << std::endl;
    for (size_t i = 0; i < 10; i++)
    {
        std::cout << "Student id: " << ss[i].id << ", salary: " << ss[i].salary << std::endl;
    }
}