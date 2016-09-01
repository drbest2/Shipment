package Shipment::UPS::WSDL::TrackTypes::DestinationPortDetailType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.ups.com/XMLSchema/XOLTWS/Track/v2.0' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %DestinationPort_of :ATTR(:get<DestinationPort>);
my %EstimatedArrival_of :ATTR(:get<EstimatedArrival>);

__PACKAGE__->_factory(
    [ qw(        DestinationPort
        EstimatedArrival

    ) ],
    {
        'DestinationPort' => \%DestinationPort_of,
        'EstimatedArrival' => \%EstimatedArrival_of,
    },
    {
        'DestinationPort' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'EstimatedArrival' => 'Shipment::UPS::WSDL::TrackTypes::DateTimeType',
    },
    {

        'DestinationPort' => 'DestinationPort',
        'EstimatedArrival' => 'EstimatedArrival',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::UPS::WSDL::TrackTypes::DestinationPortDetailType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DestinationPortDetailType from the namespace http://www.ups.com/XMLSchema/XOLTWS/Track/v2.0.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * DestinationPort


=item * EstimatedArrival




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::UPS::WSDL::TrackTypes::DestinationPortDetailType
   DestinationPort =>  $some_value, # string
   EstimatedArrival =>  { # Shipment::UPS::WSDL::TrackTypes::DateTimeType
     Date =>  $some_value, # string
     Time =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
