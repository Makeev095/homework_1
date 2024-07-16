//
//  ViewController.swift
//  homework_1
//
//  Created by Макей 😈 on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let subscriptions: UILabel = UILabel()
    private let subscriptionsAmount: UILabel = UILabel()
    
    private let subscribes: UILabel = UILabel()
    private let subscribesAmount: UILabel = UILabel()
    
    private let posts: UILabel = UILabel()
    private let postsAmount: UILabel = UILabel()
    
    private let addPostButton: UIButton = UIButton()
    
    private let aboutMe: UILabel = UILabel()
    private let aboutMeText: UILabel = UILabel()
    
    private let exitButton: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupConstraints()
        
    }
    
    private func setupView() {
        
        view.backgroundColor = .white
        
        subscriptions.text = "Подписок"
        subscriptions.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
        subscriptionsAmount.text = "99"
        
        subscribes.text = "Подписчиков"
        subscribes.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
        subscribesAmount.text = "120"
        
        posts.text = "Постов"
        posts.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
        postsAmount.text = "300"
        
        addPostButton.tintColor = .white
        addPostButton.setTitle("Добавить пост", for: .normal)
        addPostButton.backgroundColor = .black
        addPostButton.layer.cornerRadius = 20
        
        aboutMe.textColor = .black
        aboutMe.text = "О себе"
        aboutMe.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
        
        aboutMeText.numberOfLines = 0
        aboutMeText.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud"
        
        exitButton.text = "Выйти"
        exitButton.textAlignment = .center
        exitButton.textColor = .systemBlue
        
        view.addSubview(subscriptions)
        view.addSubview(subscriptionsAmount)
        view.addSubview(subscribes)
        view.addSubview(subscribesAmount)
        view.addSubview(posts)
        view.addSubview(postsAmount)
        view.addSubview(addPostButton)
        view.addSubview(aboutMe)
        view.addSubview(aboutMeText)
        view.addSubview(exitButton)
        
    }
    
    private func setupConstraints() {
        
        subscriptions.translatesAutoresizingMaskIntoConstraints = false
        subscriptionsAmount.translatesAutoresizingMaskIntoConstraints = false
        subscribes.translatesAutoresizingMaskIntoConstraints = false
        subscribesAmount.translatesAutoresizingMaskIntoConstraints = false
        posts.translatesAutoresizingMaskIntoConstraints = false
        postsAmount.translatesAutoresizingMaskIntoConstraints = false
        addPostButton.translatesAutoresizingMaskIntoConstraints = false
        aboutMe.translatesAutoresizingMaskIntoConstraints = false
        aboutMeText.translatesAutoresizingMaskIntoConstraints = false
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subscriptions.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            subscriptions.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            
            subscriptionsAmount.topAnchor.constraint(equalTo: subscriptions.bottomAnchor,constant: 10),
            subscriptionsAmount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            
            subscribes.topAnchor.constraint(equalTo: subscriptions.topAnchor),
            subscribes.leadingAnchor.constraint(equalTo: subscriptions.trailingAnchor, constant: 20),

            subscribesAmount.topAnchor.constraint(equalTo: subscribes.bottomAnchor, constant: 10),
            subscribesAmount.leadingAnchor.constraint(equalTo: subscribes.leadingAnchor, constant: 45),

            posts.topAnchor.constraint(equalTo: subscribes.topAnchor),
            posts.leadingAnchor.constraint(equalTo: subscribes.trailingAnchor, constant: 25),

            postsAmount.topAnchor.constraint(equalTo: posts.bottomAnchor, constant: 10),
            postsAmount.leadingAnchor.constraint(equalTo: posts.leadingAnchor, constant: 17),

            addPostButton.topAnchor.constraint(equalTo: subscribesAmount.bottomAnchor, constant: 20),
            addPostButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            addPostButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            addPostButton.heightAnchor.constraint(equalToConstant: 40),

            aboutMe.topAnchor.constraint(equalTo: addPostButton.bottomAnchor, constant: 20),
            aboutMe.leadingAnchor.constraint(equalTo: addPostButton.leadingAnchor),
            aboutMe.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            aboutMe.heightAnchor.constraint(equalToConstant: 20),
            
            aboutMeText.topAnchor.constraint(equalTo: aboutMe.bottomAnchor, constant: 5),
            aboutMeText.leadingAnchor.constraint(equalTo: aboutMe.leadingAnchor),
            aboutMeText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            aboutMeText.heightAnchor.constraint(equalToConstant: 100),
            
            exitButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            exitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            exitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
    }
}
