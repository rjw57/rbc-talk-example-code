/* array_demo.b: example of arrays of words */

main() {
    extrn putnumb, putchar, v;
    auto i;
    i = 0; while(i < 8) {
        putnumb(v[i]); putchar(' ');
        i =+ 1;
    }
    putchar('*n');

    putnumb(v); putchar('*n');
}

v[] 1, 1, 2, 3, 5, 8, 13;
