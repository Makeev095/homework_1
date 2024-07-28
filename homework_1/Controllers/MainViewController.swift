//
//  MainViewController.swift
//  homework_1
//
//  Created by Макей 😈 on 15.07.2024.
//

import UIKit

protocol MainViewControllerDelegate {
    func setUserData(name: String, surname: String)
}

class MainViewController: UIViewController, MainViewControllerDelegate {
    
    private lazy var mainScreenView: UIView = {
        $0.frame = CGRect(x: 30, y: 101, width: view.frame.size.width - 60, height: 110)
        $0.backgroundColor = .systemGray5
        $0.layer.cornerRadius = 30
        return $0
    }(UIView())
    
    private lazy var avatarImage: UIImageView = {
        $0.frame = CGRect(x: mainScreenView.frame.minX + 17, y: mainScreenView.frame.minY + 18, width: 75, height: 75)
        $0.image = UIImage(named: "Avatar")
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 20
        return $0
    }(UIImageView())
    
    private lazy var nameAndSurnameLabel: UILabel = {
        $0.frame = CGRect(x: avatarImage.frame.maxX + 12, y: mainScreenView.frame.minY + 29, width: 145, height: 19)
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        return $0
    }(UILabel())
    
    private lazy var fullInfoButton: UIButton = {
        $0.setImage(UIImage(named: "Arrow"), for: .normal)
        $0.tintColor = .black
        $0.frame = CGRect(x: editingButton.frame.maxX + 45, y: mainScreenView.frame.midY - 8, width: 17, height: 17)
        return $0
    }(UIButton(primaryAction: fullInfoButtonAction))
    
    private lazy var editingButton: UIButton = {
        $0.setTitle("Редактировать", for: .normal)
        $0.backgroundColor = .blue
        $0.setTitleColor(.white, for: .normal)
        $0.frame = CGRect(x: avatarImage.frame.maxX + 12, y: nameAndSurnameLabel.frame.minY + 26 , width: 147, height: 30)
        $0.layer.cornerRadius = 10
        return $0
    }(UIButton(primaryAction: editingButtonAction))
    
    private lazy var editingButtonAction: UIAction = UIAction { [weak self] _ in
        let settingsVC = SettingsViewController()
        settingsVC.delegate = self
        self?.navigationController?.pushViewController(settingsVC, animated: true)
    }
    
    private lazy var fullInfoButtonAction: UIAction = UIAction { [weak self] _ in
        let fullInfoVC = FullInfoViewController()
        fullInfoVC.titleText = self?.nameAndSurnameLabel.text
        fullInfoVC.avatar = self?.avatarImage.image
        self?.navigationController?.pushViewController(fullInfoVC, animated: true)
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Главная"
        view.addSubviews(mainScreenView, avatarImage, nameAndSurnameLabel, editingButton, fullInfoButton)
    }
    
    func setUserData(name: String, surname: String) {
        nameAndSurnameLabel.text = name + " " + surname
    }
}
