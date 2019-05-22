import std.stdio;
import std.string;
import std.algorithm;

void main()
{
    string chikun, dengue, zika, dnaChain;
    int chain, count, iter;
    
    while (readf(" %s\n%s\n%s\n%s", &chikun, &dengue, &zika, &chain))
    {
        for (count = iter = 0; iter + chain <= chikun.length; ++iter)
        {
            dnaChain = chikun[iter .. iter + chain];
            if (canFind(dengue, dnaChain) && canFind(zika, dnaChain))
            {    
                ++count;
            }
        }
        writeln(count);
    }
}
