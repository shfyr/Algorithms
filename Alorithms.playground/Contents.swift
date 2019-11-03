import UIKit
import Foundation


//Binary search algorithm. Doesnt work

//var myArray = [1, 2, 7, 10, 15, 26, 50, 75, 94]

//func BinarySearch (number: Int, array: [Int]) -> Int? {
//
//    let temporaryIndex = Double(array.count)
//    let OIndex = Int(ceil(log2(temporaryIndex)))
//    var index = Int(temporaryIndex)
//
//    index = index/2
//    for _ in 1...OIndex {
//        if number > array[index] {
//            index = index + index/2
//        } else if number < array[index] {
//            index = index - index/2
//        } else {
//            break
//        }
//    }
//    if array[index] == number {
//    return index
//    } else {
//        print ("There is no such number in array")
//        return nil
//    }
//}


//Binary search algirith. Working one
    
var myArray = [1, 2, 7, 10, 15, 26, 50, 75, 94]

func binarySearch(inputArr: [Int], searchItem: Int) -> Int? {
    var lowerIndex = 0;
    var upperIndex = inputArr.count - 1

    while true {
        let currentIndex = (lowerIndex + upperIndex)/2
        
        if inputArr[currentIndex] == searchItem {
            return currentIndex
        } else if lowerIndex > upperIndex {
            return nil
        } else {
            if inputArr[currentIndex] > searchItem {
                upperIndex = currentIndex - 1
            } else {
                lowerIndex = currentIndex + 1
            }
        }
    }
}

binarySearch(inputArr: myArray, searchItem: 15) ?? 0



//Quick Sort Algorithm

var mySortArray = [46, 64, 98, 453, 10, 18, 45, 55, 78, 90]

func Quicksort(array: [Int]) -> [Int] {
    
    guard  array.count > 1 else {return array}

    let pivot = array[array.count/2]
  
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot}
    let more = array.filter { $0 > pivot}

    return Quicksort(array: less) + equal + Quicksort(array: more)
}


Quicksort(array: mySortArray)

// Selection sort algorithm



      func FindSmallest (array: [Int]) -> Int{
       
          var smallest = array[0]
          var smallestIndex = 0

          for index in 0...array.count-1 {

              if smallest >= array[index] {
              smallest = array[index]
                  smallestIndex = index
              }
          }
          return smallestIndex
      }

func SelectionSort (array: [Int]) -> [Int] {
    var sortingArray = array
    var newArray: [Int] = []

        for _ in 0...sortingArray.count-1 {
            let smallestIndex = FindSmallest(array: sortingArray)
            newArray.append(sortingArray[smallestIndex])
            sortingArray.remove(at: smallestIndex)
    }
    return newArray
}

SelectionSort(array: mySortArray)


