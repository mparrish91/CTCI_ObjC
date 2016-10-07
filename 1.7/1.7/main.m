//
//  main.m
//  1.7
//
//  Created by parry on 10/5/16.
//  Copyright © 2016 parry. All rights reserved.
//

#import <Foundation/Foundation.h>


BOOL rotateMatix(int row, int col, int matrix[row][col])
{
    
    if (row == 0 || row != col)
    {
        return false;
    }
    
    //for each row
    for (int layer = 0; layer < row / 2; layer++)
    {
        int first = layer;
        int last  = row - 1 - layer;
        
        //for each column
        for (int i = first; i < last; i++)
        {
            int offset = i - first;
            
            int top = matrix[first][i];  //save top
            
            //left -> top
            matrix[first][i] = matrix[last - offset][first];
            
            //bottom -> left
            matrix[last - offset][first] = matrix[last][last - offset];
            
            //right -> bottom
            matrix[last][last - offset] = matrix[i][last];
            
            //top -> right
            matrix[i][last] = top;   // right  <- saved top
            
        }
        
    }
    return true;
 
}

BOOL printMatrix(int row, int col, int matrix[row][col])
{
    
    for (int rows = 0; rows < row; rows++)
    {
        for (int columns = 0; columns < col; columns++)
        {printf("%d     ", matrix[rows][columns]);}
        printf("\n");
    }
    
    
    return true;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        int matrix [4][4] = { {1, 2, 3, 4},
            {5, 6, 7, 8},
            {9, 10, 11, 12},
            {13, 14, 15, 16}
        };
        
        printMatrix(4, 4, matrix);

        bool value = rotateMatix(4, 4, matrix);
        
        printMatrix(4, 4, matrix);

        
        
     
    }
    return 0;
}
