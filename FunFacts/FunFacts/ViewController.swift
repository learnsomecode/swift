//
//  ViewController.swift
//  FunFacts
//
//  Created by Josh Trommel on 2015-01-17.
//  Copyright (c) 2015 Josh Trommel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    
    let factBook = FactBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFact() {
        funFactLabel.text = factBook.randomFact()
    }
}

