package MyTypes::Person;
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

my %PersonID_of :ATTR(:get<PersonID>);
my %Salutation_of :ATTR(:get<Salutation>);
my %Name_of :ATTR(:get<Name>);
my %GivenName_of :ATTR(:get<GivenName>);
my %DateOfBirth_of :ATTR(:get<DateOfBirth>);
my %HomeAddress_of :ATTR(:get<HomeAddress>);
my %WorkAddress_of :ATTR(:get<WorkAddress>);
my %Contracts_of :ATTR(:get<Contracts>);

__PACKAGE__->_factory(
    [ qw(        PersonID
        Salutation
        Name
        GivenName
        DateOfBirth
        HomeAddress
        WorkAddress
        Contracts

    ) ],
    {
        'PersonID' => \%PersonID_of,
        'Salutation' => \%Salutation_of,
        'Name' => \%Name_of,
        'GivenName' => \%GivenName_of,
        'DateOfBirth' => \%DateOfBirth_of,
        'HomeAddress' => \%HomeAddress_of,
        'WorkAddress' => \%WorkAddress_of,
        'Contracts' => \%Contracts_of,
    },
    {
        'PersonID' => 'MyTypes::PersonID',
        'Salutation' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'GivenName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DateOfBirth' => 'SOAP::WSDL::XSD::Typelib::Builtin::date',
        'HomeAddress' => 'MyTypes::Address',
        'WorkAddress' => 'MyTypes::Address',
        'Contracts' => 'MyTypes::ArrayOfContract',
    },
    {

        'PersonID' => 'PersonID',
        'Salutation' => 'Salutation',
        'Name' => 'Name',
        'GivenName' => 'GivenName',
        'DateOfBirth' => 'DateOfBirth',
        'HomeAddress' => 'HomeAddress',
        'WorkAddress' => 'WorkAddress',
        'Contracts' => 'Contracts',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::Person

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Person from the namespace http://www.example.org/benchmark/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PersonID


=item * Salutation


=item * Name


=item * GivenName


=item * DateOfBirth


=item * HomeAddress


=item * WorkAddress


=item * Contracts




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::Person
   PersonID =>  { # MyTypes::PersonID
     ID =>  $some_value, # int
   },
   Salutation =>  $some_value, # string
   Name =>  $some_value, # string
   GivenName =>  $some_value, # string
   DateOfBirth =>  $some_value, # date
   HomeAddress =>  { # MyTypes::Address
     Street =>  $some_value, # string
     ZIP =>  $some_value, # string
     City =>  $some_value, # string
     Country =>  $some_value, # string
     PhoneNumber => $some_value, # PhoneNumber
     MobilePhoneNumber => $some_value, # PhoneNumber
   },
   WorkAddress =>  { # MyTypes::Address
     Street =>  $some_value, # string
     ZIP =>  $some_value, # string
     City =>  $some_value, # string
     Country =>  $some_value, # string
     PhoneNumber => $some_value, # PhoneNumber
     MobilePhoneNumber => $some_value, # PhoneNumber
   },
   Contracts =>  { # MyTypes::ArrayOfContract
     Contract =>  { # MyTypes::Contract
       ContractID =>  $some_value, # long
       ContractName =>  $some_value, # string
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
