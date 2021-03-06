//
//  ViewController.swift
//  MusubiImagePickerDemo
//
//  Created by はるふ on 2016/11/30.
//  Copyright © 2016年 はるふ. All rights reserved.
//

import UIKit
import MusubiImagePicker
import Photos

class ViewController: UIViewController, MusubiImagePickerDelegate {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let picker = MusubiImagePicker.instanciate()
        picker.config.delegate = self
        // すでにある場合はこれをセットする
        picker.config.previouslySelectedAssetLocalIdentifiers = ["ED7AC36B-A150-4C38-BB8C-B6D696F4F2ED/L0/001", "495F9CF5-F638-4694-9C48-B73451DA9C7A/L0/001"]
        picker.config.maxSelectionsCount = 4
        self.present(picker, animated: true, completion: nil)
    }
    
    func didFinishPickingAssets(picker: MusubiImagePicker, selectedAssets: [PHAsset], assetCollection: PHAssetCollection!) {
        picker.dismiss(animated: true, completion: nil)
        print(selectedAssets.map({ $0.localIdentifier }))
    }
    
    func didCancelPickingAssets(picker: MusubiImagePicker) {
        picker.dismiss(animated: true, completion: nil)
        print("canceled")
    }

}

