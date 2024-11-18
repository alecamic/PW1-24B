#!/usr/bin/perl
use Moose;

# Ejercicio 03: Getters y setters
package Persona;

has 'nombre' => (
    is       => 'rw', 
    isa      => 'Str',
    required => 1,
);

has 'edad' => (
    is       => 'rw',
    isa      => 'Int',
    required => 1,
);

1;

# Creando un objeto
my $persona = Persona->new(nombre => 'Ana', edad => 20);

# Usar el getter para obtener el nombre
print "Nombre: " . $persona->nombre . "\n";

# Usar el setter para cambiar el nombre
$persona->nombre('Lucía');
print "Nuevo nombre: " . $persona->nombre . "\n";
