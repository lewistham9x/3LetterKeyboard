//
//  ViewController.swift
//  ThreeLetterKeyboard
//
//  Created by Lewis Tham on 25/2/18.
//  Copyright © 2018 miim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //need to init a dictionary for it to load all words
    var newDic = WordDictionary()
    var newWord = Word()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        type(letter: "a")
        type(letter: "a")
        type(letter: "a")


    }
    
    func type(letter : String){
        newWord.addLetter(letter: letter)
        
        let next3 = newWord.getNextFew()
        
        for letter in next3{
            print(letter)
        }
        
        print("current word:")
        newWord.display()
        print("–––––––––––––")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

