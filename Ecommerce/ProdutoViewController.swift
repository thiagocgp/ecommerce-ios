//
//  ProdutoViewController.swift
//  Ecommerce
//
//  Created by Aluno on 06/04/2019.
//  Copyright © 2019 ufg. All rights reserved.
//

import UIKit

class ProdutoViewController: UIViewController {

    @IBOutlet weak var vrImagemProduto: UIImageView!
    @IBOutlet weak var vrTituloProduto: UILabel!
    @IBOutlet weak var vrPreco: UILabel!
    @IBOutlet weak var vrDescricao: UILabel!
    @IBOutlet weak var vrVendedor: UILabel!
    @IBOutlet weak var vrTelefone: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func comprarProduto(_ sender: UIButton) {
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
