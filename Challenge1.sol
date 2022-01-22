// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Challenge1 {
    
    mapping (uint256 => bool) private leftMap;
    mapping (uint256 => bool) private rightMap;
    
    uint256[] private result;

    //Explanation:
    // 1 - Create a Map for each Array, setting value to True for elements in the array
    // 2 - Loop for each array checking that value is false against the other array's map 
    // 3 - Return Array of values that were unique to each array 
    function calculateDelta (uint256[] memory left, uint256[] memory right) public returns (uint256[] memory) {

        populateDetla(left, leftMap);
        populateDetla(right, rightMap);

        checkMaps(left, rightMap);
        checkMaps(right, leftMap);

        return result;
    }

    function populateDetla(uint256[] memory arr, mapping(uint256 =>bool) storage map) private {
        for(uint256 i; i < arr.length; i++){
            map[arr[i]] = true;  
        }
    }

    function checkMaps(uint256[] memory arr, mapping(uint256 =>bool) storage map) private {
        for(uint256 j; j< arr.length; j++){
            if(map[arr[j]]==false) {
                result.push(arr[j]);
            }
        }
    }

    function getAnswer() public  view returns(uint256[] memory){
        return result;
    }

}

