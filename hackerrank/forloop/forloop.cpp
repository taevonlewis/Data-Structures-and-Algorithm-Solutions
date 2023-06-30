// For Loop

#include <iostream>
#include <string>

int main() {
    int a;
    int b;
    std::cin >> a >> b;
    
    std::string nums[] = {
    "zero", 
    "one", 
    "two", 
    "three", 
    "four", 
    "five", 
    "six", 
    "seven", 
    "eight", 
    "nine"
    };
    
    for (int i = a; i <= b; i++)
    {
        if (i > 9)
        {
            if (i % 2 == 0)
            {
                std::cout << "even\n";
            } else {
                std::cout << "odd\n";
            }
        } else {
            std::cout << nums[i] << '\n';
        }
    }
    return 0;
}
