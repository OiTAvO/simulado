#include <bits/stdc++.h>

static char bff[1005], vagas[1005] = {0};
static int plcs[10005][2];

int main () {
    int C, N, i, j, cmd[3], vgs, val, aux;
    char in[20], *it, *ptr = &bff[0];
    
    while (~scanf("%d %d", &C, &N)) {
        vgs = C;
        val = 0;
        while (N--) {
            scanf(" %[^\n]s", &in);
            it = strtok(in, " ");
            cmd[0] = *it;
            cmd[1] = atoi(it + 2);

            if (cmd[0] == 'S') {
                vgs += plcs[cmd[1]][0];
                aux = plcs[cmd[1]][1] + plcs[cmd[1]][0];
                for (i = plcs[cmd[1]][1]; i < aux; ++i)
                    vagas[i] = 0;
            } else {
                cmd[2] = atoi(it + 7);
                if (cmd[2] <= vgs)
                    for (i = 1, aux = 0; i <= C; ++i) {
                        if (!vagas[i]) {
                            if (++aux == cmd[2]) {
                                plcs[cmd[1]][0] = cmd[2];
                                plcs[cmd[1]][1] = i - cmd[2] + 1;
                                vgs -= cmd[2];
                                while (aux--) vagas[i--] = 1;
                                val += 10;
                                break;
                            }
                        } else aux = 0;
                    }
            }
        }
        ptr += sprintf(ptr, "%d\n", val);
        for (i = 1; i <= C; ++i) vagas[i] = 0;
    }
    printf("%s", bff);
    return 0;
}
