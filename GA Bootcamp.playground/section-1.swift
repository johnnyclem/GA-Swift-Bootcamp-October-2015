// Playground - noun: a place where people can play

import UIKit

var age : Float?

age = 5.823423

if let ageFloat = age {
    println("age is \(ageFloat)")
} else {
    println("age was nil")
}

var alertView = UIAlertView(title: "Warning!", message: "This alert does nothing", delegate: nil, cancelButtonTitle: nil, otherButtonTitles: "OK")
