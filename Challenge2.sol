// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;


contract Challenge2 { 

    uint256 public result;

    //Recursively call conversion until returns single digit uint8 result
    function converter(uint256 original) public returns (uint8) {
     
        uint256 num = original;
        uint256 sum;

          while (num > 0) {
            sum = sum + num % 10;
            num = num / 10;
        }
            result = sum;

        // uint8 ranges from 0 to 2 ** 8 - 1
        //However the challenge specified the result must be between 0-10 
        if( 0 <= result && result < 10) {
            return uint8(result);
        }

        return converter(result);
    }


}


