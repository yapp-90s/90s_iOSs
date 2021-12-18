//
//  MainTabBarController.swift
//  90s
//
//  Created by 김진우 on 2021/02/20.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
//        let albumVC = AlbumsViewController(viewModel: AlbumsViewModel(dependency: .init(albumRepository: .shared)))
//        let albumNaviVC = UINavigationController(rootViewController: albumVC)
//        albumNaviVC.setNavigationBarHidden(true, animated: false)
//        albumNaviVC.tabBarItem = UITabBarItem(title: "앨범", image: .init(named: "Gnb_Album_Inact"), tag: 0)
        
        let filmVC = BaseNavigationControllerViewController(rootViewController: FilmMainViewController()) 
        filmVC.tabBarItem = UITabBarItem(title: "필름", image: .init(named: "Gnb_Film_Inact"), tag: 1)
        
        let profileVC = BaseNavigationControllerViewController(rootViewController: ProfileViewController())
        profileVC.tabBarItem = UITabBarItem(title: "프로필", image: .init(named: "Gnb_Profile_Inact"), tag: 2)
        
        self.tabBar.tintColor = .white
        
        let tabList = [
//            albumNaviVC,
            filmVC,
            profileVC
        ]
        
        viewControllers = tabList
    }
}
