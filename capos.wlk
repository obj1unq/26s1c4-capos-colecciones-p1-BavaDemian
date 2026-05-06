import artefactos.*


object rolando {
    const inventario = []
    var capacidad = 2
    var property position = game.at(3,3)

    method inventario() = inventario

    method hayEspacio() = inventario.size() < capacidad

    method capacidad(_capacidad) {
        capacidad = _capacidad
    }

    method encontrar(artefacto) {
        if (self.hayEspacio()){
            inventario.add(artefacto)
        } else {
            console.println("Inventario lleno")
        }
    }

    method estaEnCastillo() = self.position() == castillo.position()

    method almacenar() {
        castillo.guardar(inventario)
        inventario.clear()
    }
    // El método colección es...
    method coleccion() = self.inventario() + castillo.inventario()
}

object castillo {
    const inventario = []
    var property position = game.at(5,5)

    method inventario() = inventario

    method guardar(artefactos) {
        inventario.addAll(artefactos)
    }
}