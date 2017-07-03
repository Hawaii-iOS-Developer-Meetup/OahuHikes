//
//  ViewController.swift
//  AssetID
//
//  Created by adam smith on 6/29/17.
//  Copyright © 2017 adam smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hikingPic: UIImageView!
    
    var hike: Hike = .stairway
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hikingPic.image = UIImage(named: "stairway")
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn {
            hikingPic.image = UIImage(assetIdentifier: .stairway)
            hike = .stairway
        } else {
            hikingPic.image = UIImage(assetIdentifier: .diamondhead)
            hike = .diamondhead
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == SegueIdentifier.segueFromViewControllerToDetailViewController.rawValue {
            guard let detailViewController = segue.destination as? DetailViewController else { fatalError() }
            detailViewController.hike = hike
        }
    }
}

