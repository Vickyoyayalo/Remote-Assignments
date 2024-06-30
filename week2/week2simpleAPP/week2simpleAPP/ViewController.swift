//
//  ViewController.swift
//  week2simpleAPP
//
//  Created by Vickyhereiam on 2024/6/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!

    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    let colors: [UIColor] = [
          .red, .orange, .yellow, .green, .blue, .purple, .brown
      ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        middleLabel.numberOfLines = 0
        middleLabel.lineBreakMode = .byWordWrapping
        changeContent()
    }
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        changeContent()
    }
    func changeContent() {
           // choose a color and text randomly 
           let randomText = text.randomElement()!
           let randomColor = colors.randomElement()!
           
           // change the label and background color
           middleLabel.text = randomText
           view.backgroundColor = randomColor
       }
    
}

