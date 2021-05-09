//
//  main.cpp
//  arrayPointer
//
//  Created by Melissa Estrada on 3/18/19.
//  Copyright © 2019 Melissa Estrada. All rights reserved.
//

#include <iostream>
using namespace std;

int main()
{
    int list[6] = {11, 12, 13, 14, 15, 16};
    
    for (int i = 0; i < 6; i++)
        cout << "address: " << (list + i) <<
        " value: " << *(list + i) << " " <<
        " value: " << list[i] << endl;
    
    return 0;
}

