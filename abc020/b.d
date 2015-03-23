import std.stdio;
import std.algorithm;
import std.range;
import std.conv;
import std.string;

void main() {
    string a, b;
    readf("%s %s\n", &a, &b);

    writeln((a[] ~ b[]).to!int * 2);
}
