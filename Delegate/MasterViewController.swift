//
//  ViewController.swift
//  Delegate
//
//  Created by tham gia huy on 5/10/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, DetailViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnPerformSeguePressed(_ sender: Any) {
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.delegate = self
        }
    }
    
    func finishPassing(string: String) {
        print("Notified")
        print(string)
    }
}

