import std.stdio;
import std.range;
import std.algorithm;
import std.string;
import std.conv;

void main() {
    int n = readln.chomp.to!(int);
    bool[][] neighbor = new bool[][](n + 1, n + 1);

    for (int i = 0; i < n - 1; i++) {
        auto r = readln.chomp.split.map!(to!int);
        int a = r[0];
        int b = r[1];
        neighbor[a][b] = true;
        neighbor[b][a] = true;
    }

    bool[] visit = new bool[](n + 1);
    int[] answer;
    int[] queue = [ 1 ];

    while (!queue.empty) {
        int elem = queue[0];
        queue.popFront;
        visit[elem] = true;
        answer ~= elem;
        int[] next_elem;
        bool[] elem_row = neighbor[elem];

        foreach (int i, e; elem_row) {
            if (e == true && !visit[i]) {
                queue ~= i;
            }
        }

        queue = queue.sort;
    }

    answer.map!(to!string).join(" ").writeln;
}
