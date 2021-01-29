#include "iostream"

using namespace std;

int main() {
    int n, t = 0;
    cin >> n;
    for (int i = 0; i < n; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            t = t + i;
        }
    }
    cout << t;
}