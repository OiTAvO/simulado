import std.stdio, std.string, std.algorithm;

void main()
{
    string C, D, Z, temp;
    int T, qtd, i;
    
    while (readf(" %s\n%s\n%s\n%s ", &C, &D, &Z, &T))
    {
        for (qtd = i = 0; i + T <= C.length; ++i)
        {
            temp = C[i .. i + T];
            if (canFind(D, temp) && canFind(Z, temp))
            {    
                ++qtd;
            }
        }
        writeln(qtd);
    }
}
