# simulator-OpenCL
This is a OpenCLv1.2-Wrapper which can highly improve the development efficiency.

# `./utils` DIR
- Contains all useful tools.
- **envRela**
    - OpenCL environment init.
- **pgAndKernel**
    - The OpenCL Program and Kernel controller.
- **mm**
    - The OpenCL Memory-Object Controller.

# `./programs` DIR
- Put all your OpenCL program file(which contains your kernel and device structure).
- **Remember that all your program file must prefix with `program_`.**
- File `program_test.cl` contained in the dir is a simple example. 

# `./template.cpp` FILE
- A program example under this project.

# PS
- Almost all the annotations are in Chinese, please excuse me.
- The Wrapper is all under the OpenCLv1.2 API.
- 如果你是咱们中国同志，又正好有时间的话可以帮忙翻译一下然后push上来哦，我会很快merge!!
