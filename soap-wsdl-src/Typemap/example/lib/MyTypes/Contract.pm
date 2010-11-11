package MyTypes::Contract;
use strict;
use warnings;


our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ContractID_of :ATTR(:get<ContractID>);
my %ContractName_of :ATTR(:get<ContractName>);

__PACKAGE__->_factory(
    [ qw(        ContractID
        ContractName

    ) ],
    {
        'ContractID' => \%ContractID_of,
        'ContractName' => \%ContractName_of,
    },
    {
        'ContractID' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'ContractName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'ContractID' => 'ContractID',
        'ContractName' => 'ContractName',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::Contract

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Contract from the namespace http://www.example.org/benchmark/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ContractID


=item * ContractName




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::Contract
   ContractID =>  $some_value, # long
   ContractName =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
