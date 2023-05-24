//
//  ViewController.swift
//  project3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//
import UIKit

class EscuelaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var modelos: [Modelo] = []
    var animes: [Anime] = []
    
    @IBOutlet weak var TvInicio: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        modelos.append(Modelo(segue: "anime", menu: "Evangelion", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/a/a6/Neon_Genesis_Evangelion_-_Poster.jpg/revision/latest?cb=20220519030722&path-prefix=es")))
        modelos.append(Modelo(segue: "anime", menu: "Dragon Ball Z", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/7/7c/Dragon-Ball-Z.png/revision/latest?cb=20200911193425&path-prefix=es")))
        modelos.append(Modelo(segue: "anime", menu: "Death Note", imagen: "", imageURL: URL(string: "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg")))
        modelos.append(Modelo(segue: "anime", menu: "Chainsaw man", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/chainsaw-man/images/3/3a/Volumen_1.png/revision/latest?cb=20220922005416&path-prefix=es")))
        modelos.append(Modelo(segue: "anime", menu: "Boku no Hero Academia", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/5/5d/MHA_Temporada_6.jpg/revision/latest?cb=20230118041958&path-prefix=es")))
        modelos.append(Modelo(segue: "anime", menu: "Kimetsu no Yaiba", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/2/2b/Kimetsu_no_Yaiba_Key_Visual_3.png/revision/latest?cb=20190319204656")))
        modelos.append(Modelo(segue: "anime", menu: "Berserk", imagen: "", imageURL: URL(string: "https://m.media-amazon.com/images/I/81+xh1mRSTL.jpg")))
        modelos.append(Modelo(segue: "anime", menu: "Fullmetal Alchemist: Brotherhood", imagen: "", imageURL: URL(string: "https://cdn.myanimelist.net/images/anime/2/17472l.jpg")))
        modelos[0].animes.append(Anime(descripcion: "Evangelion es un anime de ciencia ficción y mecha que sigue la historia de un grupo de adolescentes pilotos de robots gigantes llamados EVA que defienden a la humanidad de criaturas misteriosas conocidas como Ángeles. A medida que la trama se desarrolla, se exploran temas profundos como la identidad, la soledad y la naturaleza de la existencia humana. Con su narrativa compleja y personajes memorables, Evangelion ha dejado una huella duradera en la industria del anime.", capitulo: "25 episodios", temporada: "1 temporada", imagenP: "", imagenC: "", titulo: "Evangelion", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/a/a6/Neon_Genesis_Evangelion_-_Poster.jpg/revision/latest?cb=20220519030722&path-prefix=es")))
        modelos[1].animes.append(Anime(descripcion: "Dragon Ball Z es una famosa serie de anime y manga creada por Akira Toriyama. Es la continuación directa de la serie original de Dragon Ball. La historia se centra en Goku, un poderoso guerrero Saiyan, y sus amigos mientras luchan contra enemigos cada vez más poderosos para proteger la Tierra y el universo. Dragon Ball Z es conocida por sus intensas batallas, personajes icónicos y la búsqueda constante de Goku por superar sus límites y convertirse en el guerrero más fuerte. La serie ha dejado un impacto duradero en la cultura popular y es considerada como una de las mejores y más influyentes obras del género de la acción y la fantasía.", capitulo: "220 episodios", temporada: "5 temporadas", imagenP: "", imagenC: "", titulo: "Dragon Ball Z", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/7/7c/Dragon-Ball-Z.png/revision/latest?cb=20200911193425&path-prefix=es")))
        modelos[2].animes.append(Anime(descripcion: "Death Note es una serie de manga y anime que cuenta la historia de Light Yagami, un brillante estudiante de secundaria que encuentra un cuaderno sobrenatural llamado Death Note. El cuaderno tiene el poder de matar a cualquier persona cuyo nombre sea escrito en él, siempre y cuando el escritor conozca su rostro. Light decide usar el Death Note para eliminar a todos los criminales y convertirse en un dios del nuevo mundo.", capitulo: "37 episodios", temporada: "2 temporadas", imagenP: "", imagenC: "", titulo: "Death Note", imageURL: URL(string: "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg")))
        modelos[3].animes.append(Anime(descripcion: "Chainsaw Man es un manga de acción y horror creado por Tatsuki Fujimoto. La historia sigue a Denji, un joven que trabaja como cazador de demonios y vive endeudado. Después de un trágico encuentro, Denji se fusiona con su perro demonio, Chainsaw Man, convirtiéndose en un híbrido humano-demonio con una motosierra como cabeza.", capitulo: "12 episodios", temporada: "1 temporada", imagenP: "", imagenC: "", titulo: "Chainsaw Man", imageURL: URL(string: "https://static.wikia.nocookie.net/chainsaw-man/images/3/3a/Volumen_1.png/revision/latest?cb=20220922005416&path-prefix=es")))
        modelos[4].animes.append(Anime(descripcion: "La historia se desarrolla en un mundo donde la mayoría de las personas nacen con superpoderes llamados Quirks. El protagonista, Izuku Midoriya, es uno de los pocos que no tiene un Quirk, pero sueña con convertirse en un héroe."¿, capitulo: "138 episodios", temporada: "6 temporadas", imagenP: "", imagenC: "", titulo: "Boku no Hero Academia", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/5/5d/MHA_Temporada_6.jpg/revision/latest?cb=20230118041958&path-prefix=es")))
        modelos[5].animes.append(Anime(descripcion: "Kimetsu no Yaiba es un popular manga y anime japonés que cuenta la historia de Tanjiro Kamado, un joven que se convierte en cazador de demonios después de que su familia es asesinada por un demonio y su hermana Nezuko se convierte en uno. Tanjiro busca vengar la muerte de su familia y encontrar una cura para revertir la transformación de su hermana. En su viaje, se une a otros cazadores de demonios y enfrenta peligrosos enemigos mientras aprende sobre el mundo de los demonios y descubre su propia fuerza. La serie combina acción emocionante, personajes memorables y una trama conmovedora sobre la lucha entre la humanidad y los demonios.", capitulo: "67 episodios", temporada: "4 temporadas", imagenP: "", imagenC: "", titulo: "Kimetsu no Yaiba", imageURL: URL(string: "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/2/2b/Kimetsu_no_Yaiba_Key_Visual_3.png/revision/latest?cb=20190319204656")))
        modelos[6].animes.append(Anime(descripcion: "Berserk es una popular serie de manga y anime creada por Kentaro Miura. La historia se centra en Guts, un guerrero solitario atormentado por su pasado y sediento de venganza. Ambientada en un mundo medieval oscuro y brutal, Berserk sigue la trágica y violenta vida de Guts mientras lucha contra monstruos, demonios y otros seres sobrenaturales. La serie aborda temas como la brutalidad, la traición, la redención y la lucha interna entre la luz y la oscuridad. Con su narrativa cruda y visualmente impactante, Berserk ha ganado una base de fans dedicada y es conocida por su violencia explícita y su enfoque en la exploración de la condición humana.", capitulo: "25 episodios", temporada: "1 temporada", imagenP: "", imagenC: "", titulo: "Berserk", imageURL: URL(string: "https://m.media-amazon.com/images/I/81+xh1mRSTL.jpg")))
        modelos[7].animes.append(Anime(descripcion: "Fullmetal Alchemist: Brotherhood es una serie de anime y manga que cuenta la historia de dos hermanos, Edward y Alphonse Elric, quienes buscan la Piedra Filosofal para restaurar sus cuerpos después de un fallido intento de resucitar a su madre utilizando la alquimia. Ambientada en un mundo donde la alquimia es una ciencia poderosa, los hermanos se embarcan en un viaje lleno de acción, intriga y emociones mientras descubren una conspiración más grande detrás de la búsqueda de la Piedra Filosofal. La serie destaca por su enfoque en la ética, la moralidad y el valor del sacrificio mientras los personajes luchan por encontrar la verdad y enfrentar las consecuencias de sus acciones.", capitulo: "64 episodios", temporada: "1 temporada", imagenP: "", imagenC: "", titulo: "Fullmetal Alchemist: Brotherhood", imageURL: URL(string: "https://cdn.myanimelist.net/images/anime/2/17472l.jpg")))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as! CeldaMenuController
        celda.lblMenu.text = modelos[indexPath.row].menu
        //celda.lblImagen.image = UIImage(named:modelos[indexPath.row].imagen)
        
        if let imageURL = modelos[indexPath.row].imageURL {
            URLSession.shared.dataTask(with: imageURL) { data, response, error in
                if let data = data {
                    DispatchQueue.main.async {
                        celda.lblImagen.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Se ejecuta cuando se selecciona una celda del TableView
        performSegue(withIdentifier: modelos[indexPath.row].segue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "anime" {
            if let indexPath = TvInicio.indexPathForSelectedRow {
                let destino = segue.destination as! AnimeController
                destino.animes = modelos[indexPath.row].animes
                destino.selectedTitle = modelos[indexPath.row].menu            }
        }
    }
}
