#include <stdio.h>

__global__ void hello_form_gpu()
{
    printf("hello World form the GPU\n");
}

int main(void) 
{
    hello_form_gpu<<<1, 1>>>();
    cudaDeviceSynchronize();
    return 0;
}
