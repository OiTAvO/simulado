import std.stdio;
import std.math;
import std.algorithm;
import std.conv;

void main ()
{
    int number, rootInt, squaredRoot;
    char[] str, r_str;

    while(readf(" %s", number) && number)
    {
        str = to!(char[])(number);
        r_str = str.dup.reverse();
        rootInt = to!int(sqrt(to!double(number)));
        squaredRoot = rootInt * rootInt - number;
        if (canFind(str, r_str) && !squaredRoot)
            writeln("S");
        else
            writeln("N");
    }
}
