#!/usr/bin/perl
use Moose;

# Ejercicio 02: Constructor
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

# Método para mostrar información de la persona
sub mostrar_informacion {
    my $self = shift;
    print "Nombre: " . $self->nombre . "\n";
    print "Edad: " . $self->edad . " años\n";
}

1; 

my $persona = Persona->new(nombre => 'María', edad => 25);
$persona->mostrar_informacion();