//
//  ViewController.swift
//  Challenge1_Curriculum
//
//  Created by lucas.silva on 17/10/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var curriculumTableView: UITableView!
    
    let movies: [String] = ["Homem de ferro 2 - 2008",
                            "Os Vingadores - 2012",
                            "Capitão América 2: Soldado Invernal - 2014",
                            "Vingadores: Era de Ultron - 2015",
                            "Capitão América 3: Guerra Civil - 2016",
                            "Vingadores: Guerra Infinita - 2018",
                            "Capitã Marvel - 2019",
                            "Vingadores: Ultimato - 2019",
                            "Viúva Negra - 2021"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        curriculumTableView.delegate   = self
        curriculumTableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate { }
