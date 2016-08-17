//
//  ConchViewController.swift
//  MagicConchApp
//
//  Created by Edward on 7/21/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class ConchViewController: UIViewController {
    
    @IBOutlet weak var answerText: UILabel!
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var nameText: UILabel!
    
    var questionAsked = ""
    
    var name = ""
    
    var answerToWhyArray : [String] = ["Because.", "I Don't Know", "Who Cares?", "The Avengers Was Overrated.", "Not A Single Clue.", "Why Don't You Ask A Magic Conch?", "I Cannot Answer This In English.", "Try Asking Again.", "Not A Fan Of This One.", "Because Men Are All Pigs", "Ask Your Father.", "Bush did 9/11.", "Because Women Are Evil", "Ask Again Later.", "I Cannot Answer This One.", "I Don't Know, Go Away."]
    
    var answerToWhoArray : [String] = ["Your Mom", "Ask Your Mother.", "Ask Your Father.", "Bush did 9/11.", "SIGABRT", "Ask Again Later.", "I Cannot Answer This One.", "I Don't Know, Go Away.", "It Was Me.", "Trump.", "I Cannot Answer This One.", "Why Don't You Ask A Magic Conch?", "What A Stupid Question.", "Me", "I'm Squidward And He's Squidward", "Sandy Cheeks"]
    
    var answerToWhereArray : [String] = ["Bikini Bottom", "Nowhere", "Not A Single Clue.", "I Cannot Answer This In English.", "Try Asking Again.", "Bush did 9/11.", "What A Stupid Question.", "HAHAHAHA!", "I'm In De Nile.", "I Cannot Answer This.", "Why Don't You Ask A Magic Conch?", "Why Don't You Ask A Magic Conch?", "Try Asking Again.", "Right Here", "In your neighborhood", "Where The Cherry Blossom Reaches The Moon"]
    
    var answerToWhatArray : [String] = ["I did", "I Don't Know", "It Was My Ex", "I Cannot Answer This One.", "Why Don't You Ask A Magic Conch?", "I'm Currently In Rehab.", "Try Asking Again.", "I cannot tell", "Small Cats", "Worst. Question. Ever", "Get A Life, Stop Wasting Your Time", "There Is No Answer", "Just Don't Try", "Red", "The Answer To Your Question is......", "What About Love?"]
    
    var answerToHowArray : [String] = ["Because", "Aliens", "I Don't Know", "What?", "I Cannot Answer This One.", "Why Don't You Ask A Magic Conch?", "Bush did 9/11.", "Ask Again Later.", "I Cannot Answer This One.", "I Don't Know, Go Away.", "Take Three Puppies And Eat them", "Not A Fan Of This One.", "Ask Your Mother.", "Ask Your Father.", "Try To Find Love", "How Are You?"]
    
    var answerToYesNoArray : [String] = ["Nah", "Yep", "Definately", "Sure", "Never", "Probabaly", "I Don't Give A Seahorse", "Barnacles! Not This Question!", "Yes, But No.", "Heck, I Don't Care", "Nope", "Maybe A Girl Will Loves Me...", "UUUUUUUUUHHHHHHHHH.....", "I Think So.", "I Wonder...", "If You Get Life, Maybe You'll Know"]
    
    var answerToWhenArray : [String] = ["Never", "Always", "I Just Don't Care", "Why Don't You Ask A Magic Conch?", "Febuary", "Septemberuary", "SIGABRT", "What A Stupid Question.", "When The Cat Uprising Begins", "When I Get A Girlfriend", "When I Find REAL Love", "When My Wife Finally Leaves me", "When Will We Know?", "When A Women Tells Me She Loves Me", "Ask Me Again In 20yrs", "When I Feel Like Answering"]
    
    let answer = Int(arc4random_uniform(16))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameText.text = "\(name)'s question was: "
        
        questionText.text = questionAsked
        
        if questionAsked.rangeOfString("Why") != nil || questionAsked.rangeOfString("why") != nil {
            print("exists")
            answerText.text = answerToWhyArray [answer]
        }
            
        else if questionAsked.rangeOfString("Who") != nil || questionAsked.rangeOfString("who") != nil{
            print("exists")
            answerText.text = answerToWhoArray [answer]
        }
            
        else if questionAsked.rangeOfString("Where") != nil || questionAsked.rangeOfString("where") != nil{
            print("exists")
            answerText.text = answerToWhereArray [answer]
        }
            
        else if questionAsked.rangeOfString("What") != nil || questionAsked.rangeOfString("what") != nil{
            print("exists")
            answerText.text = answerToWhatArray [answer]
        }
            
        else if questionAsked.rangeOfString("How") != nil || questionAsked.rangeOfString("how") != nil{
            print("exists")
            answerText.text = answerToHowArray [answer]
        }
            
        else if questionAsked.rangeOfString("Will") != nil || questionAsked.rangeOfString("will") != nil || questionAsked.rangeOfString("Was") != nil || questionAsked.rangeOfString("was") != nil || questionAsked.rangeOfString("Does") != nil || questionAsked.rangeOfString("does") != nil || questionAsked.rangeOfString("Do") != nil || questionAsked.rangeOfString("do") != nil || questionAsked.rangeOfString("Is") != nil || questionAsked.rangeOfString("is") != nil{
            print("exists")
            answerText.text = answerToYesNoArray [answer]
        }
            
        else if questionAsked.rangeOfString("When") != nil || questionAsked.rangeOfString("when") != nil{
            print("exists")
            answerText.text = answerToWhenArray [answer]
        }
            
        else {
            answerText.text = "Ask A REAL Question, You Stupid Idiot."
        }
    }
}














