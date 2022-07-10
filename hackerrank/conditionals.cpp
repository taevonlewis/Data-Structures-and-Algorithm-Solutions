// Conditional Statements

#include <bits/stdc++.h>

using namespace std;

string ltrim(const string &);
string rtrim(const string &);



int main()
{
    string n_temp;
    getline(cin, n_temp);

    int n = stoi(ltrim(rtrim(n_temp)));

    switch (n) {
    case 1: 
    std::cout << "one";
    break;
    case 2: 
    std::cout << "two";
    break;
    case 3: 
    std::cout << "three";
    break;
    case 4: 
    std::cout << "four";
    break;
    case 5: 
    std::cout << "five";
    break;
    case 6: 
    std::cout << "six";
    break;
    case 7: 
    std::cout << "seven";
    break;
    case 8: 
    std::cout << "eight";
    break;
    case 9: 
    std::cout << "nine";
    break;
    default:
    break;
    }
    
    if (n > 9) std::cout << "Greater than 9";
    return 0;
}

string ltrim(const string &str) {
    string s(str);

    s.erase(
        s.begin(),
        find_if(s.begin(), s.end(), not1(ptr_fun<int, int>(isspace)))
    );

    return s;
}

string rtrim(const string &str) {
    string s(str);

    s.erase(
        find_if(s.rbegin(), s.rend(), not1(ptr_fun<int, int>(isspace))).base(),
        s.end()
    );

    return s;
}
