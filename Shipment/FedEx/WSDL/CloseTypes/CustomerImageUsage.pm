package Shipment::FedEx::WSDL::CloseTypes::CustomerImageUsage;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/close/v2' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Type_of :ATTR(:get<Type>);
my %Id_of :ATTR(:get<Id>);
my %InternalId_of :ATTR(:get<InternalId>);
my %InternalImageType_of :ATTR(:get<InternalImageType>);

__PACKAGE__->_factory(
    [ qw(        Type
        Id
        InternalId
        InternalImageType

    ) ],
    {
        'Type' => \%Type_of,
        'Id' => \%Id_of,
        'InternalId' => \%InternalId_of,
        'InternalImageType' => \%InternalImageType_of,
    },
    {
        'Type' => 'Shipment::FedEx::WSDL::CloseTypes::CustomerImageUsageType',
        'Id' => 'Shipment::FedEx::WSDL::CloseTypes::ImageId',
        'InternalId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'InternalImageType' => 'Shipment::FedEx::WSDL::CloseTypes::InternalImageType',
    },
    {

        'Type' => 'Type',
        'Id' => 'Id',
        'InternalId' => 'InternalId',
        'InternalImageType' => 'InternalImageType',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::CloseTypes::CustomerImageUsage

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CustomerImageUsage from the namespace http://fedex.com/ws/close/v2.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Type (min/maxOccurs: 0/1)


=item * Id (min/maxOccurs: 0/1)


=item * InternalId (min/maxOccurs: 0/1)


=item * InternalImageType (min/maxOccurs: 0/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::CloseTypes::CustomerImageUsage
   Type => $some_value, # CustomerImageUsageType
   Id => $some_value, # ImageId
   InternalId =>  $some_value, # string
   InternalImageType => $some_value, # InternalImageType
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
