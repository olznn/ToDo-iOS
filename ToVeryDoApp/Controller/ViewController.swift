//
//  ViewController.swift
//  ToVeryDoApp
//
//  Created by stefan-vm on 04/02/2018.
//  Copyright © 2018 stefan-vm. All rights reserved.
//

import UIKit
import PaperOnboarding


class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {
    
    @IBOutlet weak var onBoardingView: OnBoardingView!
    
    @IBOutlet weak var btnGetStarted: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        onBoardingView.dataSource = self
        onBoardingView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onboardingItemsCount() -> Int {
        return 2;
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        let bgColorOne = UIColor(red: 135/255, green:195/255, blue:154/255, alpha: 1)
        let bgColorTwo = UIColor(red: 38/255, green:194/255, blue:129/255, alpha: 1)
        
        let title = UIFont(name: "AppleSDGothicNeo-UltraLight", size:24)!
        let description = UIFont(name:"AppleSDGothicNeo-Light", size:18)!
        
        let imgOne = UIImage(named:"paper-plane")!
        let imgTwo = UIImage(named: "star")!
        
        
        return [OnboardingItemInfo(informationImage: imgOne, title: "A Great To-Do", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pharetra nulla id lobortis sollicitudin. Curabitur eu turpis iaculis, euismod odio ac, molestie diam.", pageIcon: UIImage(named:"dot-single")!, color: bgColorOne, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: title, descriptionFont: description),
                OnboardingItemInfo(informationImage: imgTwo, title: "Get Notifications", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pharetra nulla id lobortis sollicitudin. Curabitur eu turpis iaculis, euismod odio ac, molestie diam.", pageIcon: UIImage(named:"dot-single")!, color: bgColorTwo, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: title, descriptionFont: description)
                ][index]
        }
    
    func onboardingDidTransitonToIndex(_ index: Int)
    {
        if index == 1
        {
            UIView.animate(withDuration: 0.4, animations: {
                self.btnGetStarted.alpha = 1
            })
           
        }
    }
    
    func onboardingWillTransitonToIndex(_ index: Int)
    {
        if index == 0
        {
            UIView.animate(withDuration: 0.2, animations: {
                self.btnGetStarted.alpha = 0
            })
            
        }
    }
    
   
    


}

