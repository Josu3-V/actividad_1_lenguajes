void main(){
  Biblioteca miEstante = Biblioteca();

  Libro libro_1= Libro ("Marvin", "My life", 2023);
  Libro libro_2= Libro ("Jane Austen", "Orgullo y Prejuicio", 1813);
  Libro libro_3= Libro ("Harper Lee", "Matar a un risueñor", 1960);
  Libro libro_4= Libro ("James Joyce", "Ulises", 1922);

  miEstante.agregarLibro(libro_1);
  miEstante.agregarLibro(libro_2);
  miEstante.agregarLibro(libro_3);
  miEstante.agregarLibro(libro_4);

  print("Libros de mi biblioteca:\n$miEstante");

  print("\nLibros publicados en 1813:");
  miEstante.buscarPorAnioPublicacion(1813);

  print("\nLibros por autor (James Joyce):");
  miEstante.buscarLibroPorAutor("James Joyce");

  print("\nEliminar libro:");
  miEstante.eliminarLibro(libro_3);
  print("Libros de mi biblioteca despues de realizar una eliminacion:\n$miEstante");

  print("\nLibros ordenados por año de publicación en forma ascendente:");
  miEstante.listarLibrosPorAnio();

  print(miEstante);

}

class Libro {
  String titulo;
  String autor;
  int anioPublicacion;
  
  Libro(this.autor, this.titulo, this.anioPublicacion);

  String toString() => "Autor: $autor, Titulo: $titulo, Añio publicacion: $anioPublicacion";
}

class Biblioteca{
  List<Libro> libros = [];

  void agregarLibro(Libro libro){
    libros.add(libro);
  }

  void eliminarLibro(Libro libro){
    libros.remove(libro);
  }

  void buscarLibroPorAutor(String autor){
    bool coincidencia = false;
    for(int i=0; i<libros.length;i++){
      if(libros[i].autor == autor){
        print(libros[i]);
        coincidencia = true;
      }
      if (!coincidencia){
        print("No se puede encontrar ninguna coincidencia del autor $autor");
      }
    }
  }

  void buscarPorAnioPublicacion(int anioPublicacion){
    bool encontrar = false;
    for (int i=0; i<libros.length; i++){
      if(libros[i].anioPublicacion == anioPublicacion){
        print(libros[i]);
        encontrar = true;
      }
    }
    if (!encontrar){
        print("No se puede encontrar ninguna coincidencia del anio de purblicacion $anioPublicacion");
      
    }

  }

  void ordenarLibrosPorAnio(){
    for (int i=0; i<libros.length - 1;i++){
      for(int j=0; j< libros.length -i -1;j++){
        if(libros[j].anioPublicacion> libros[j+1].anioPublicacion){
        Libro temp = libros[j];
        libros[j] = libros[j + 1];
        libros[j + 1] = temp;
        }
      }
    }
  }

  void listarLibrosPorAnio(){
    ordenarLibrosPorAnio();
    print(libros.join("\n"));
  }
}