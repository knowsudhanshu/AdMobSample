//
//  ViewController.swift
//  AdMobSample
//
//  Created by Sudhanshu Sudhanshu on 12/04/19.
//  Copyright © 2019 Sudhanshu Sudhanshu. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    @IBOutlet weak var adBannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adSetup()
    }
    
    private func adSetup() {
        adBannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716" // Unit id shouldn't be used during testing. No ad will be shown
        adBannerView.rootViewController = self
        adBannerView.load(GADRequest())
        adBannerView.delegate = self
    }
}


extension ViewController: GADBannerViewDelegate {
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        print("adViewDidReceiveAd")
    }
    
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        print("error: \(error)")
    }
}

