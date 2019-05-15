//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Vallen Deviyanto on 15/05/19.
//  Copyright © 2019 Vallen Deviyanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var learnerGenderModel: UILabel!
    @IBOutlet weak var learnerAgeModel: UILabel!
    @IBOutlet weak var learnerNameModel: UILabel!
    var learnerInstance : LearnerModel?
    var facilitatorInstance : FacilitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Vallen", ageLearner: 21, genderLearner: "Male", imageProfileLearner: "Photo1")
        facilitatorInstance = FacilitatorModel(facilName: "ASD", facilAge: 19, facilGender: "MALE", facilImageProfile: "Photo2", facilPerk: "")
        updateUI()
    }
    
    
    func updateUI() {
        if let instance = facilitatorInstance {
            learnerNameModel.text = instance.name
            learnerAgeModel.text = "\(instance.age)"
            learnerGenderModel.text = instance.gender
        
        }
       
    }

    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = facilitatorInstance {
            instance.increaseAge()
            instance.coachMentee()
            updateUI()
        }
    }
    
    

    
    
    
    
}

