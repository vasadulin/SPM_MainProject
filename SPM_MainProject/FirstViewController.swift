//
//  ViewController.swift
//  SPM_MainProject
//
//  Created by vasadulin on 02.12.2022.
//

import UIKit
import CommonLibrary
import MyUILibraty
import MyLocalUILibrary

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let v = CommonLibrary()
    v.printHello()
  }

  @IBAction func openButtonAction(_ sender: Any) {
    //Open ViewController from REMOTE library MyUILibrary
    let vc = MainViewController.viewControllerFromStoryboard
    self.present(vc, animated: true, completion: nil)
  }
  
  @IBAction func openLocalButtonAction(_ sender: Any) {
    //Open ViewController from LOCAL library MyUILibrary
    let vc = LocalViewController.viewControllerFromStoryboard
    self.present(vc, animated: true, completion: nil)
  }
}

