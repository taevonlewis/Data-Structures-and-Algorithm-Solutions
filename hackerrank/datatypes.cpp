// Basic Data Types

#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    int x;
    long y;
    char a;
    float b;
    double c;
    scanf("%d %ld %c %f %lf", &x, &y, &a, &b, &c);
    printf("%d\n%ld\n%c\n%f\n%lf", x, y, a, b, c);
    return 0;
}