#include <bits/stdc++.h>

int main() {
    int n, aux;
    std::vector<int> heap;
    bool isMaxHeap, isntMaxMin = false;
    
    while (~scanf("%d", &n)) {
        while (n--) {
            scanf("%d", &aux);
            heap.push_back(aux);
        }
         
        isMaxHeap = heap[heap.size() - 1] <= heap[(heap.size() - 2) / 2];
        for (int i = heap.size() - 2; i > 0; --i)
            if (isMaxHeap != (heap[i] <= heap[(i - 1)  / 2]))
                if (heap[i] != heap[(i - 1)  / 2]) {
                    isntMaxMin = true;
                    break;
                }
            
        if(isntMaxMin)
            printf("nada\n");
        else if (isMaxHeap)
            printf("max\n");
        else
            printf("min\n");
        
        isntMaxMin = false;    
        heap.clear();
    }
    return 0;
}