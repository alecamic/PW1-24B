#!/usr/bin/perl
use Moose;

# Ejercicio 04: Herencia simple
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

sub mostrar_informacion {
    my $self = shift;
    print "Nombre: " . $self->nombre . ", Edad: " . $self->edad . " años\n";
}

1;

# Clase derivada Empleado que hereda de Persona
package Empleado;
use Moose;
extends 'Persona';

has 'puesto' => (
    is  => 'rw',
    isa => 'Str',
);

sub mostrar_informacion {
    my $self = shift;
    $self->SUPER::mostrar_informacion();
    print "Puesto: " . $self->puesto . "\n";
}

1;

my $empleado = Empleado->new(nombre => 'Pedro', edad => 35, puesto => 'Gerente');
$empleado->mostrar_informacion();
