import Foundation

struct producto {
    let nombre: String
    let desc: String
    let precio: Double
}

let productos = [
    producto(nombre: "Ford Mustang", desc: "Ícono de los muscle cars, conocido por su potencia y estilo clásico", precio: 30000.0),
    producto(nombre: "Chevrolet Camaro", desc: "Deportivo estadounidense con diseño agresivo y gran desempeño", precio: 27000.0),
    producto(nombre: "Toyota Corolla", desc: "Compacto confiable y eficiente, ideal para el día a día", precio: 21000.0),
    producto(nombre: "Honda Civic", des: "Sedán versátil y moderno con excelente consumo de combustible", precio: 24000.0),
    producto(nombre: "Tesla Model 3", desc: " Eléctrico popular, con tecnología avanzada y aceleración impresionante", precio: 40000.0),
    producto(nombre: "BMW M3", desc: "Sedán de lujo con un enfoque deportivo y manejo excepcional", precio: 73000.0),
    producto(nombre: "Audi A4", desc: "Elegancia y rendimiento equilibrados, perfecto para ejecutivos", precio: 42000.0),
    producto(nombre: "Porsche 911", desc: " Leyenda de los autos deportivos, conocido por su velocidad y diseño icónico", precio: 120000.0),
    producto(nombre: "Jeep Wrangler", desc: "SUV robusto, diseñado para aventuras todoterreno", precio: 33000.0),
    producto(nombre: "Lamborghini Huracán", desc: "Superdeportivo italiano con diseño exótico y gran potencia", precio: 215000.0),
]

var carrito: [producto] = []

func showProducts() {
    print("\nLista de Productos:")
    for (index, producto) in productos.enumerated() {
        print("\(index + 1). \(producto.nombre) - $\(producto.precio)")
    }
    print("\nElige un producto para agregar al carrito (1-10), escribe 11 para ver el carrito, o 0 para salir:")
}

func showCart() {
    print("\nCarrito de Compras:")
    if carrito.isEmpty {
        print("Tu carrito está vacío.")
    } else {
        var total = 0.0
        for (index, producto) in carrito.enumerated() {
            print("\(index + 1). \(producto.nombre) - $\(producto.precio)")
            total += producto.precio
        }
        print("\nTotal a pagar: $\(total)")
    }
}

while true {
    showProducts()
    if let input = readLine(), let choice = Int(input) {
        if choice > 0 && choice <= productos.count {
            let selectedproducto = productos[choice - 1]
            carrito.append(selectedproducto)
            print("Agregaste \(selectedproducto.name) al carrito.")
        } else if choice == 11 {
            showCart()
        } else if choice == 0 {
            print("Gracias por usar el programa. ¡Adiós!")
            break
        } else {
            print("Opción inválida, intenta nuevamente.")
        }
    }
}
