#!/usr/bin/perl
use Moose;

#Ejercicio 05: Asociación

# Clase Persona
package Persona;

has 'nombre' => (
    is  => 'rw',
    isa => 'Str',
);

sub mostrar_nombre {
    my $self = shift;
    print "Persona: " . $self->nombre . "\n";
}

1;

# Clase Empresa
package Empresa;

has 'nombre' => (
    is  => 'rw',
    isa => 'Str',
);

has 'empleado' => (
    is  => 'rw',
    isa => 'Persona',
);

sub mostrar_empresa {
    my $self = shift;
    print "Empresa: " . $self->nombre . "\n";
    print "Empleado: ";
    $self->empleado->mostrar_nombre();
}

1;

package main;
my $persona = Persona->new(nombre => 'Carlos');
my $empresa = Empresa->new(nombre => 'Tecno', empleado => $persona);

$empresa->mostrar_empresa();