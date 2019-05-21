import std.conv;
import std.stdio;
import std.string;
import std.algorithm;

void main()
{
    string[] sHeap;
    bool isMaxHeap, isNothing;
    auto heap = map!(to!int)(sHeap);

    while ((sHeap = split(strip(readln()), " ")).length > 2)
    {
        heap = map!(to!int)(sHeap[1 .. $]);
        isMaxHeap = (heap[$ - 1] <= heap[($ - 2) / 2]);
        for (int i = heap.length - 2; i > 0; --i)
        {
            if (isMaxHeap != (heap[i] <= heap[(i - 1) / 2]))
                if (heap[i] != heap[(i - 1) / 2])
                {
                    writeln("nada");
                    isNothing = true;
                    break;
                }
        }
        if (!isNothing)
            writeln((isMaxHeap ? "max" : "min"));
        else
            isNothing = false;
    }
}
