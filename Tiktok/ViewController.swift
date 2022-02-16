//
//  ViewController.swift
//  Tiktok
//
//  Created by my macbook on 13/2/22.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    lazy var tapTiktok: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.backgroundColor = .black
        view.distribution = .fillProportionally
       
        
        return view
    }()
    lazy var LiveButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "livephoto"), for: .normal)
        view.tintColor = .white
        return view
    }()
    lazy var rekomendationButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setTitle("рекомендации", for: .normal)
        view.setTitleColor(.white, for: .normal)
       
        return view
    }()
    lazy var unflowButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setTitle("подписки", for: .normal)
        view.setTitleColor(.white, for: .normal)
        
        return view
    }()
    lazy var searcButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        view.tintColor = .white
        view.setTitleColor(.white, for: .normal)
       
        return view
    }()
    
    lazy var touchBarTiktok: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.backgroundColor = .black
        view.distribution = .fillEqually
        return view
    }()
    lazy var HomeButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setImage(UIImage(systemName: "house.fill"), for: .normal)
        view.tintColor = .white
        return view
    }()
    lazy var interestingButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setImage(UIImage(systemName: "safari"), for: .normal)
        view.tintColor = .white
        return view
    }()
    lazy var plusButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setImage(UIImage(systemName: "plus.rectangle.fill.on.rectangle.fill"), for: .normal)
        view.tintColor = .white
        return view
    }()
    lazy var incomingButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setImage(UIImage(systemName: "ellipses.bubble"), for: .normal)
        view.tintColor = .white
       
        return view
    }()
    lazy var profileButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .black
        view.setImage(UIImage(systemName: "person", compatibleWith: .none), for: .normal)
        view.tintColor = .white
       
        return view
    }()
    
      
    
    
    private lazy var collectionView:  UICollectionView = {
        let flow = UICollectionViewFlowLayout()
        flow.scrollDirection = .vertical

        let view = UICollectionView(frame: .zero, collectionViewLayout: flow)
        view.delegate = self
        view.dataSource = self
        view.isPagingEnabled = true
        view.register(ImageViewCell.self, forCellWithReuseIdentifier: "ImageViewCell")
        return view
    }()
    
    private var tiktok: [UIImage] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addTiktok()
        view.backgroundColor = .black
        view.addSubview(tapTiktok)
        tapTiktok.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(self.view.frame.height / 13)
            make.width.equalToSuperview()
        }
       
        tapTiktok.addArrangedSubview(LiveButton)
        tapTiktok.addArrangedSubview(rekomendationButton)
        tapTiktok.addArrangedSubview(unflowButton)
        tapTiktok.addArrangedSubview(searcButton)
       
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(tapTiktok.snp.bottom)
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view.addSubview(touchBarTiktok)
        touchBarTiktok.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.height.equalTo(self.view.frame.height / 13)
            make.width.equalToSuperview()
        }
        touchBarTiktok.addArrangedSubview(HomeButton)
        touchBarTiktok.addArrangedSubview(interestingButton)
        touchBarTiktok.addArrangedSubview(plusButton)
        touchBarTiktok.addArrangedSubview(incomingButton)
        touchBarTiktok.addArrangedSubview(profileButton)
        // Do any additional setup after loading the view.
    }




func addTiktok() {
    tiktok.append(UIImage(named: "image1")!)
    tiktok.append(UIImage(named: "image1")!)
    tiktok.append(UIImage(named: "image1")!)
    tiktok.append(UIImage(named: "image1")!)
    

    collectionView.reloadData()
}
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: (view.frame.width), height: (view.frame.width / 0.6))
       
        }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return tiktok.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let index = indexPath.row
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageViewCell", for: indexPath) as! ImageViewCell
        cell.backgroundColor = .black
        cell.imageTiktok.image = tiktok[index]
       
       
        return cell
    }
    
    
}
                    

