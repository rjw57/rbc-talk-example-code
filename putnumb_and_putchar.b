/* putnumb_and_putchar.b: show difference between putnumb and putchar */

main() {
    extrn putnumb, putchar;
    auto x, y;

    x = 'abc';
    y = 123;

    putnumb(x); putchar('*n');
    putchar(x); putchar('*n');
    putnumb(y); putchar('*n');
    putchar(y); putchar('*n');
}
