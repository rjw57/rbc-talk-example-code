/* printn_and_putchar.b: show difference between printn and putchar */

main() {
    extrn printn, putchar;
    auto x, y;

    x = 'abc';
    y = 123;

    printn(x, 16); putchar('*n');
    putchar(x); putchar('*n');
    printn(y, 16); putchar('*n');
    putchar(y); putchar('*n');
}
