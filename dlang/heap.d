import std.conv;
import std.stdio;
import std.string;
import std.algorithm;

void main()
{
    string[] inputs;
    bool isMaxHeap, isntMaxMin;
    auto heap = map!(to!int)(inputs);

    while ((inputs = split(strip(readln()), " ")).length > 2)
    {
        isntMaxMin = false;
        heap = map!(to!int)(inputs[1 .. $]);
        isMaxHeap = (heap[$ - 1] <= heap[($ - 2) / 2]);

        for (int i = heap.length - 2; i > 0; --i)
        {
            if (isMaxHeap != (heap[i] <= heap[(i - 1) / 2]))
            {
                if (heap[i] != heap[(i - 1) / 2])
                {
                    isntMaxMin = true;
                    break;
                }
            }
        }

        if (isntMaxMin)
            writeln("nada");
        else if (isMaxHeap)
            writeln("max");
        else
            writeln("min");
    }
}
