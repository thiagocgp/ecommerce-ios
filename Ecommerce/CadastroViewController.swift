//
//  CadastroViewController.swift
//  Ecommerce
//
//  Created by Aluno on 06/04/2019.
//  Copyright © 2019 ufg. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var vrProdutoNome: UITextField!
    @IBOutlet weak var vrProdutoDescricao: UITextField!
    @IBOutlet weak var vrProdutoPreco: UITextField!
    @IBOutlet weak var vrProdutoImagem: UIImageView!
    @IBOutlet weak var vcContatoNome: UITextField!
    @IBOutlet weak var vrContatoTel: UITextField!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        imagePicker.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tirarFoto(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func cadastrar(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CadastroViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            vrProdutoImagem.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
