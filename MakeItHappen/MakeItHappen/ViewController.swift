//
//  ViewController.swift
//  MakeItHappen
//
//  Created by CSC214 Instructor on 7/20/18.
//  Copyright © 2018 University of Rochester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var SwitchStack: UIStackView!
    @IBOutlet weak var faveImage: UIImageView!
    @IBOutlet weak var stackViewXConstraint: NSLayoutConstraint!
    @IBOutlet weak var makeItHappenBtnBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var favoriteImageView: UIImageView!
    @IBOutlet weak var MakeItHappen: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeItHappenBtnBottomConstraint.constant = -100
        stackViewXConstraint.constant = 500
        faveImage.alpha = 0.0

        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 5, delay: 1, options: UIViewAnimationOptions(rawValue: 0), animations: {self.faveImage.alpha=1})
        UIButton.animate(withDuration: 2, delay: 2, options: [.curveEaseIn], animations: {
            self.makeItHappenBtnBottomConstraint.constant=0
            self.view.layoutIfNeeded()

        })
        UIStackView.animate(withDuration: 2, delay: 3, options: [], animations: {
            self.stackViewXConstraint.constant =  0
            self.view.layoutIfNeeded()
        })

    }

    // MARK - Utility

    @IBAction func onMakeItHappen(_ sender: UIButton) {

        UIButton.animate(withDuration: 2, animations: {
        self.view.backgroundColor = UIColor.purple
            })
        UIButton.animate(withDuration: 2,delay: 2,  animations: {
            self.view.backgroundColor = UIColor.black
        })
        UIView.animate(withDuration: 2, animations: {self.faveImage.transform = CGAffineTransform(scaleX: 2,y: 2)})
}
}

