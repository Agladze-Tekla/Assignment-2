import UIKit

print("Problem 1")
var arr1 = ["A", "R", "E"]
print(arr1)
let tempFirst = arr1[0]
let tempLast = arr1[2]
arr1[0] = tempLast
arr1[2] = tempFirst
print(arr1)

print("Problem 2")
var arr2 = [0, 1, 2, 3, 4]
print (arr2)
let goalLength: Int = arr2.count/2
while arr2.count != goalLength {
    arr2.remove(at: 0)
}
print(arr2)

print("Problem 3")
var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(numbers)
var odd: [Int] = []
var even: [Int] = []
let length: Int = numbers.count-1
for i in 0...length {
    if numbers[i]%2==0{
        even.append(numbers[i])
    }else{
        odd.append(numbers[i])
    }
}
print(odd)
print(even)

print("Problem 4")
let doubles: [Double] = [5.7, 3, 7.0, 9, 6.2, 7.1]
var highest: Double = doubles[0]
let doublesLength = doubles.count-1
for i in 0...doublesLength {
    if highest<doubles[Int(i)] {
        highest=doubles[Int(i)]
    }
}
print(highest)

print("Problem 5")
var firstArr = [8, 8, 9, 9, 0, 2]
var secondArr = [1, 0, 9, 2, 3, 7, 0, 1]
var combined: [Int] = []
combined = firstArr+secondArr
print(combined)
for i in 0...combined.count-1 {
    for j in 0...combined.count-1 {
        var replacment = 0
        if combined[i]<combined[j] {
            replacment = combined[i]
            combined[i] = combined[j]
            combined[j] = replacment
        }
    }
}
print(combined)

print("Problem 6")
let word: String = "Hello"
var wordSet: Set<Character> = []
for letters in word {
    wordSet.insert(letters)
}
print(word)
print(wordSet)
if word.count != wordSet.count {
    print("Some charachters are not unique")
} else {
    print("Every charachter is unique")
}
//The code sees lower case and upper case letters as different.

print("Problem 7")
let firstSet: Set<Int> = [6, 7, 3, 5, 2, -1, 0]
let secondSet: Set<Int> = [18, 5, 3, -5, 4]
print(firstSet)
print(secondSet)
print(firstSet.intersection(secondSet))
print(firstSet.union(secondSet))
print(firstSet.symmetricDifference(secondSet))
print(firstSet.subtracting(secondSet))
print(secondSet.subtracting(firstSet))

print("Problem 8")
let firstString: Set<String> = ["Hello", "Hi"]
let secondString: Set<String> = ["Hello", "Hi", "Ola", "Hallo"]
print(firstString)
print(secondString)
var has = 0
for item in firstString {
    if !secondString.contains(item) {
        print("The first set isn't the sub set of the second set")
        break
    } else {
        has+=1
    }
    if has==firstString.count {
        print("The first set is the sub set of the second set")
    }
}

print("Problem 9")
let wow = ["woow", "wooo", "damn", "damn"]
print(wow)
var arrSet: Set<String> = []
for item in wow {
    arrSet.insert(item)
}
if arrSet.count == wow.count {
    print("This arrays elements are all different.")
}else{
    print("Some elements of this array match.")
}

print("Problem 10")
let movies = ["Howl's moving castle": 8.2, "Adventure Time": 8.6, "The Secret Saturdays": 7.0, "How to Train Your Dragon": 8.1, "Lilo & Stitch": 7.3, "Totally Spies!": 7.1]
print(movies)
var average: Double = 0
for (key, value) in movies {
    average += value
}
average = average/Double(movies.count)
print(average)
