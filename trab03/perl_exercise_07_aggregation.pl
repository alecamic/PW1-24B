#!/usr/bin/perl
use Moose;

#Ejercicio 07: Agregación
# Clase Departamento
package Departamento;

has 'nombre' => (
    is  => 'rw',
    isa => 'Str',
);

sub mostrar_departamento {
    my $self = shift;
    print "Departamento: " . $self->nombre . "\n";
}

1;

# Clase Empresa
package Empresa;

has 'nombre' => (
    is  => 'rw',
    isa => 'Str',
);

has 'departamentos' => (
    is  => 'rw',
    isa => 'ArrayRef[Departamento]',
    default => sub { [] },
);

sub mostrar_empresa {
    my $self = shift;
    print "Empresa: " . $self->nombre . "\n";
    print "Departamentos:\n";
    $_->mostrar_departamento() for @{$self->departamentos};
}

1;

my $dep1 = Departamento->new(nombre => 'Recursos Humanos');
my $dep2 = Departamento->new(nombre => 'TI');
my $empresa = Empresa->new(nombre => 'Globant', departamentos => [$dep1, $dep2]);
$empresa->mostrar_empresa();