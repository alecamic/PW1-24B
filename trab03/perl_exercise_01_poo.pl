#!/usr/bin/perl
use Moose;

# Ejercicio 1: Definición de la clase Persona
package Persona;

# Atributos
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
    print "Nombre: " . $self->nombre . "\n";
    print "Edad: " . $self->edad . " años\n";
}

1;
