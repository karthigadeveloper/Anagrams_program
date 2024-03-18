//
//  ViewController.swift
//  Anagrams_program
//
//  Created by Karthiga on 17/03/24.
//

import UIKit
//
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Test cases
        let string1 = "listen"
        let string2 = "silent"
        if areAnagrams(string1, string2) {
            print("'\(string1)' and '\(string2)' are anagrams.")
        } else {
            print("'\(string1)' and '\(string2)' are not anagrams.")
    }
func areAnagrams(_ str1: String, _ str2: String) -> Bool {
    // Remove white spaces and convert characters to lowercase
    let formattedStr1 = str1.lowercased().replacingOccurrences(of: " ", with: "")
    let formattedStr2 = str2.lowercased().replacingOccurrences(of: " ", with: "")
    
    // Check if the lengths of the two strings are equal
    guard formattedStr1.count == formattedStr2.count else {
        return false
    }
    
    // Sort the characters in both strings and check if they are equal
    return formattedStr1.sorted() == formattedStr2.sorted()
}

}
}
