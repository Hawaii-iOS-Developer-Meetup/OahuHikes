//
//  DetailViewController.swift
//  AssetID
//
//  Created by adam smith on 6/29/17.
//  Copyright © 2017 adam smith. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var hike: Hike?

    @IBOutlet weak var hikeDetailLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = hike?.name
        errorLabel.text = ""
        hikeDetailLabel.text = ""
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard let hikeName = hike else { return }
        HikeFetcher.fetchInfo(for: hikeName) { [weak self] (result) in
            switch result {
            case .success(let hikeDescription):
                self?.hikeDetailLabel.text = hikeDescription
            case .failure(let error):
                self?.errorLabel.text = error.localizedDescription
            }
        }
    }
}
