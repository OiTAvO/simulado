import std.stdio;
import std.algorithm;
import std.conv;
import std.string;

void main()
{
    bool flg, flg2;
    string[] sHeap;

    while (true)
    {
        sHeap = split(strip(readln()), " ");
        if (sHeap == []) break;
        if (sHeap.length > 1)
        {
            sHeap = sHeap[1 .. $];
            auto heap = map!(to!int)(sHeap);
            flg = (heap[$ - 1] <= heap[($ - 2) / 2]);
            for (int i = heap.length - 1; i > 0; --i)
            {
                if (flg != (heap[i] <= heap[(i - 1) / 2]))
                    if (heap[i] != heap[(i - 1) / 2])
                    {
                        writeln("nada");
                        flg2 = true;
                        break;
                    }
            }
            if (!flg2)
                writeln((flg ? "max" : "min"));

            flg2 = false;
        }
    }
}
