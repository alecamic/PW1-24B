#!/usr/bin/perl
use Moose;

#Ejercicio 06: Composición

# Clase Dirección
package Direccion;

has 'calle' => (
    is  => 'rw',
    isa => 'Str',
);

sub mostrar_direccion {
    my $self = shift;
    print "Dirección: " . $self->calle . "\n";
}

1;

# Clase Persona
package Persona;

has 'nombre' => (
    is  => 'rw',
    isa => 'Str',
);

has 'direccion' => (
    is      => 'rw',
    isa     => 'Direccion',
    default => sub { Direccion->new(calle => 'Desconocida') },
);

sub mostrar_informacion {
    my $self = shift;
    print "Nombre: " . $self->nombre . "\n";
    $self->direccion->mostrar_direccion();
}

1;

my $direccion = Direccion->new(calle => 'Av. Independencia 123');
my $persona = Persona->new(nombre => 'María', direccion => $direccion);

$persona->mostrar_informacion();
