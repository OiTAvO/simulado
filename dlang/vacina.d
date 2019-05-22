import std.stdio;
import std.string;
import std.algorithm;

void main()
{
    string chikun, dengue, zika, dnaSeg;
    int segLen, count, iter;
    
    while (readf(" %s\n%s\n%s\n%s", &chikun, &dengue, &zika, &segLen))
    {
        for (count = iter = 0; iter + segLen <= chikun.length; ++iter)
        {
            dnaSeg = chikun[iter .. iter + segLen];
            if (canFind(dengue, dnaSeg) && canFind(zika, dnaSeg))
            {    
                ++count;
            }
        }
        writeln(count);
    }
}
