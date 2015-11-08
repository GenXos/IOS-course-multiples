//
//  ViewController.swift
//  Multiples
//
//  Created by Todd Fields on 2015-11-08.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // variables
  var multiple = 0
  var sum = 0
  var count = 0

  @IBOutlet weak var mutilplesImg: UIImageView!
  @IBOutlet weak var multiplesTxt: UITextField!
  @IBOutlet weak var multipleLbl: UILabel!
  @IBOutlet weak var addButton: UIButton!
  @IBOutlet weak var playButton: UIButton!

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func addMultiples(sender: AnyObject) {
    
    if count <= 20 {
      multipleLbl.text = "\(sum) + \(multiple) = \(sum + multiple)"
      sum = sum + multiple
      count++
    } else {

      addButton.hidden = true
      multipleLbl.hidden = true
      
      playButton.hidden = false
      multiplesTxt.hidden = false
      
      multiplesTxt.text = ""
    }
  }

  @IBAction func playMultiples(sender: AnyObject) {
    
    if multiplesTxt.text != "" {
      multiple = Int(multiplesTxt.text!)!
      resetMultiples()
    }
    
  }

  func resetMultiples() {
    
    //multiple = 0
    sum = 0
    count = 0
    
    addButton.hidden = false
    multipleLbl.hidden = false
    
    playButton.hidden = true
    multiplesTxt.hidden = true
    
  }
}

