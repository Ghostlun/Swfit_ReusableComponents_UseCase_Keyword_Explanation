//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Yoonha Kim on 5/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
    // Manage context -> We can CRUD - (Create, Read, update, and delete)
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // Lists of person data
    var items: [Person]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPeople()
    }

    // Create data
    @IBAction func addFunction() {
        let alert = UIAlertController(title: "Add name", message: "Person information", preferredStyle: .alert)
        alert.addTextField(configurationHandler: {(_ textField: UITextField) -> Void in
                  textField.placeholder = "Name"
        })
        alert.addTextField(configurationHandler: {(_ textField: UITextField) -> Void in
                  textField.placeholder = "Age"
        })
        alert.addTextField(configurationHandler: {(_ textField: UITextField) -> Void in
                  textField.placeholder = "Gender"
        })
       
        let submitButton = UIAlertAction(title: "Submit", style: .default) { action in
            guard let nameTextField = alert.textFields?[0], let ageTextField = alert.textFields?[1], let genderTextField = alert.textFields?[2] else { return }
            
            //Create New Person Objects
            let newPerson = Person(context: self.context)
            newPerson.name = nameTextField.text
            let text = ageTextField.text ?? ""
            let number = Int(text) ?? 0
            newPerson.age = Int64(number)
            newPerson.gender = genderTextField.text

            //Save the data
            do {
                try self.context.save()
            } catch {
                print("error")
            }
            self.fetchPeople()
        }
        alert.addAction(submitButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    func fetchPeople() {
        // Read
        // Fetch the core data to display tableView in the table View
        do {
            try self.items = context.fetch(Person.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } catch {
            print("Error")
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = items![indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CoreDataTableViewCell") as? CoreDataTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(person: data)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let action = UIContextualAction(style: .destructive, title: "Delete") {
            action, view, completionHandler in
            let personToRemove = self.items![indexPath.row]
            
            // Delete Data
            self.context.delete(personToRemove)
            
            do {
            try self.context.save()
            } catch {
                print("Failed Save")
            }
            self.fetchPeople()
        }
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let person = items![indexPath.row]
        let alert = UIAlertController(title: "Edit Person", message: "Edit Name", preferredStyle: .alert)
        alert.addTextField()

        let textField = alert.textFields![0]
        textField.text = person.name
        
        let saveButton = UIAlertAction(title: "Save", style: .default) { action in
            
            // Edit data
            person.name = textField.text
    
            do {
                try self.context.save()
            } catch {
                print("Update failed")
            }
            
            self.fetchPeople()
            
        }
        alert.addAction(saveButton)
        self.present(alert, animated: true)
    }
    
}

