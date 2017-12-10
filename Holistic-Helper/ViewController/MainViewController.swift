//
//  MainViewController.swift
//  Holistic-Helper
//
//  Created by Fernando Augusto de Marins on 10/12/2017.
//  Copyright © 2017 Fernando Augusto de Marins. All rights reserved.
//

import UIKit

class MainViewController: UICollectionViewController {
    
    // Array that holds the subjects
    var subjectsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubject(["Mantras", "Ervas", "Chakras"])
        collectionView?.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subjectsArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        cell.subject.text = subjectsArray[indexPath.row]
        cell.subject.textColor = UIColor.black
        
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = UIColor.clear.cgColor
        cell.layer.cornerRadius = 25.0
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Main") as? SearchViewController
        
    }
    
    private func addSubject(_ subjects: NSArray) {
        for subject in subjects {
            subjectsArray.append(subject as! String)
        }
    }

}

