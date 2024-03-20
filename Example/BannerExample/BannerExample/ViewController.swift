//
//  ViewController.swift
//  BannerExample
//
//  Created by jipiao1 on 2024/3/20.
//

import UIKit
import CouOffsiteAds

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {[weak self] in
            guard let self = self else { return }
            self.fixedBanner50()
            self.fixedBanner100()
            self.fixedBanner250()
            self.fixedBannerSmart()
        }
    }
    
    func fixedBanner50() {
        let banner = CouAdBannerView(affiliatePlacement: "", affiliatePage: "",
                                      bannerType: .FIXED_50, widgetId: "514017")
        self.view.addSubview(banner)
        banner.delegate = self
        
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            banner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    
    func fixedBanner100() {
        let banner = CouAdBannerView(affiliatePlacement: "", affiliatePage: "",
                                      bannerType: .FIXED_100, widgetId: "514017")
        self.view.addSubview(banner)
        banner.delegate = self
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 160),
            banner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
    }
    
    func fixedBanner250() {
        // second option, layout in SDK
        let banner = CouAdBannerView(affiliatePlacement: "", affiliatePage: "",
                                      bannerType: .FIXED_250, widgetId: "514017")
        self.view.addSubview(banner)
        banner.delegate = self
        
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 310),
            banner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    
    func fixedBannerSmart() {
        let banner = CouAdBannerView(affiliatePlacement: "",
                                      affiliatePage: "",
                                      bannerType: .SMART,
                                      widgetId: "514017")
        self.view.addSubview(banner)
        banner.delegate = self
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 570),
            banner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    
}



// MARK: - BannerDelegate
extension ViewController: CouAdBannerViewDelegate{
    
    func bannerDidClick(_ bannerView: CouAdBannerView) {
        print("\(bannerView) click")
    }
    
    func bannerViewFailToReceiveAdWithError(_ bannerView: CouAdBannerView, error: Error) {
        print("\(bannerView) fail to receive ad data")

    }
    
    func bannerDidReceiveAd(_ bannerView: CouAdBannerView) {
        print("\(bannerView) did receive ad data")
    }
    
    func bannerDidUpdateData(_ bannerView: CouAdBannerView) {
        print("\(bannerView) did update data")
    }
}

