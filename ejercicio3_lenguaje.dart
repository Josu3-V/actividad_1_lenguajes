//ejercicio3-Crear una clase Empleado que contenga las propiedades nombre, puesto y salario

void main() {
  List<Empleado> empleados = [
    Empleado('Marvin Perdomo', 'Recursos Humanos', 25000.50),
    Empleado('Milton Vasquez', 'Gerente', 22000.40),
    Empleado('Josue Dubon', 'Atencion al cliente', 15000.00),
  ];

  final double totalSalario;
  final double salarioprom;

  totalSalario = salariototal(empleados);
  print('Salario total de la lista de empleados:$totalSalario');

  salarioprom = salariopromedio(empleados);
  print('El salario promedio de los empleados es:$salarioprom');
}

class Empleado {
  final String nombre;
  final String puesto;
  final double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double salariototal(List<Empleado> empleados) {
  double salatotal = 0.0;

  for (var empleado in empleados) {
    salatotal += empleado.salario;
  }
  return salatotal;
}

double salariopromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) {
    return 0.0;
  }
  return salariototal(empleados) / empleados.length;
}
