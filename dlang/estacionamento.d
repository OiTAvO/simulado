import std.stdio;
import std.string;
import std.conv;
import std.array;

void main ()
{
    int[2][string] plcs;
    int C, N, i, vgs, val, aux, tm;
    bool[1005] vagas;
    string[] cmd;
    auto bff = appender!string();

    while (readf(" %s %s ", &C, &N))
    {
        vagas[] = false;
        val = 0;
        vgs = C;
        while (N--)
        {
            cmd = split(strip(readln()));
            if (cmd[0] == "S")
            {
                aux = plcs[cmd[1]][0];
                vgs += plcs[cmd[1]][1];
                vagas[aux .. aux + plcs[cmd[1]][1]] = false;
            }
            else
            {
                tm = to!short(cmd[2]);
                if (vgs >= tm)
                {
                    for (aux = i = 1; i <= C; ++i)
                    {
                        if (vagas[i])
                        {
                            aux = 1;
                        }
                        else if(aux++ == tm)
                        {
                            plcs[cmd[1]] = [i - tm + 1, tm];
                            vagas[plcs[cmd[1]][0] .. i + 1] = true;
                            val += 10;
                            vgs -= tm;
                            break;
                        }  // end else
                    }  // for i
                }  //  end if
            }  // end else
        }  // while (N--)
        bff.put(format("%d\n", val));
    }  // while(readf)
    write(bff.data);
}  // main
