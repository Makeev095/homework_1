//
//  FullInfoViewController.swift
//  homework_1
//
//  Created by Макей 😈 on 24.07.2024.
//

import UIKit

class FullInfoViewController: UIViewController {
    
    var titleText: String?
    var avatar: UIImage?
    
    private lazy var avatarImageView: UIImageView = {
        $0.frame = CGRect(x: 162, y: 115, width: 75, height: 75)
        $0.image = avatar
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    private lazy var nameAndSurnameLabel: UILabel = {
        $0.text = titleText
        $0.frame = CGRect(x: 130, y: avatarImageView.frame.maxY + 23, width: 145, height: 19)
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        return $0
    }(UILabel())
    
    private lazy var aboutMeLabel: UILabel = {
        $0.frame = CGRect(x: 30, y: nameAndSurnameLabel.frame.maxY + 48 , width: 65, height: 19)
        $0.text = "О себе"
        $0.textColor = .systemGray
        return $0
    }(UILabel())
    
    private lazy var descriptionView: UIView = {
        $0.frame = CGRect(x: aboutMeLabel.frame.minX, y: aboutMeLabel.frame.maxY + 10, width: view.frame.size.width - 60, height: 165)
        $0.layer.cornerRadius = 15
        $0.backgroundColor = .systemGray5
        return $0
    }(UIView())
    
    private lazy var descriptionText: UILabel = {
        $0.text = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam vitae distinctio nulla dignissimos eligendi iste excepturi optio repellendus dolorum deleniti incidunt voluptatem, rem voluptatibus ullam vero eos reprehenderit eveniet dolore."
        $0.numberOfLines = 0
        $0.frame = CGRect(x: descriptionView.frame.minX + 12, y: descriptionView.frame.minY + 10, width: descriptionView.frame.size.width - 24, height: 145)
        return $0
    }(UILabel())

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        title = titleText
        view.addSubviews(avatarImageView, nameAndSurnameLabel, aboutMeLabel, descriptionView, descriptionText)
    }
}
