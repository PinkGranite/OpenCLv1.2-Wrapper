#include "CL/opencl.h"
#include <unordered_map>
#include <vector>

#define MEM_CONTROLLER_READ 1
#define MEM_CONTROLLER_WRITE 0
#define DEVICE_HEAP_SIZE 1024
#define ROUTE_SEGMENT_SIZE 6
#define ROUTE_SEGMENT_NUM 1024
#define ROUTE_HEAP_SIZE 6*1024

typedef unsigned char byte;

typedef struct {
    cl_mem memObj;
    ulong size;
    ulong start;
    ulong end;
}BufferObj;

// 用于管理堆区的空闲空间
typedef struct FreePeriod{
    ulong start;
    ulong size;
    FreePeriod *next;
}FreePeriod;

typedef struct {
    int bitIndex;
    int ByteBefor;
}Bithelper;

class MemoryController {
public:
    MemoryController();
    MemoryController(cl_context);
    // 创建Memory对象(Buffer)
    void createBuffer(std::string, size_t, uint);  // 创建可读写buffer
    void createReadOnlyBuffer(std::string, size_t, uint);  // 创建只读buffer
    void createWriteOnlyBuffer(std::string, size_t, uint);  // 创建只写buffer
    // 从buffer中读写数据
    void readOrWriteBuffer(bool, cl_command_queue, std::string, void *, bool, size_t, size_t);
    // 在Buffer间拷贝内容
    void copyBetweenBuffer(cl_command_queue, std::string, std::string, size_t, size_t, size_t);
    void releaseBuffer(std::string);
    // TODO: 显示对象迁移
    /* 显示(explicit)对象迁移
     *      OpenCL存在隐式迁移，即通过设置kernel参数等方式，在需要使用到对应Memory数据对象时会进行隐式迁移
     *      也可以通过显示迁移指令来明确迁移顺序以及方式等
     *      一些情况下可用于隐藏传输延迟
     */

    // 根据传入的buffer对象名获取对应的BufferObj对象
    BufferObj getBufferObjByName(std::string);

    // 为kernel设置memory对象相关参数
    void setArgForKernel(cl_kernel, uint, std::string);

    // 设备端堆相关
    void createBufferAndInit(std::string, size_t, uint, void *);  // 创建并直接初始化buffer
    void doDeviceMalloc(std::string, size_t, uint);  // 在设备“堆”开辟空间
    void doDeviceFree(std::string);  // 释放设备“堆”空间
    /*在route heap上开辟指定个segments大小的空间，返回首个segment对应的索引*/
    int mallocSegments(int num);
    void doInitRouteHeap(cl_command_queue);
    cl_mem doGetRouteHeap();
    cl_mem doGetBitmap();

private:
    cl_mem heap;  // 通用heap
    FreePeriod *free_head = new FreePeriod{0, 0, nullptr};  // 通用heap的空闲块链表表头
    size_t totalFreeSize;  // 通用heap的总大小

    cl_mem route_heap;  // route专用heap
    // std::vector<cl_mem> segments;  // 用于存储route中的每一个buffer object
    // byte hostBitmap[ROUTE_SEGMENT_NUM/8];  // host端的bitmap
    cl_mem deviceBitmap;  // 用于表示对应segment空间是否空闲的bitmap
    cl_mem bitIndex;
    
    cl_context context;  // 关联的context的对象
    std::unordered_map<std::string, BufferObj> memObjs; // 用于管理所有创建的buffer object

    /*传入所需连续数据对象的个数，返回对应索引
        arg1: 数据对象个数
        ret: 对应segments中首个segment的索引
    */
    // int searchBitmapInNumMode(int num);
    // std::vector<int> searchBitmapInNumMode(int num);
    /*根据传入的空间大小进行搜索
        arg1: 需求的空间大小
        ret: 对应的cl_mem在segments中的索引
    */
    // int searchBitmapInSizeMode(int size);
    
    /*设置bitmap指定区域的位
        arg1: 起始byte在bitmap中的索引
        arg2: bit在起始byte中的索引
        arg3: 终止byte在bitmap中的索引
        arg4: bit在终止byte中的索引
    */
    // void setBitmapRange(int start_index, int start_bitIndex, int end_index, int end_bitIndex);
    /*设置bitmap的对应位
        arg1: byte在bitmap中的索引
        arg2: bit在对应byte中的索引
    */
    // void setBitmap(int index, int bitIndex);
    /*同步host端与device端的bitmap*/
    // void syncBitmap(cl_command_queue);
};