package Shipment::FedEx::WSDL::TrackTypes::TrackReturnDetail;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/track/v9' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %MovementStatus_of :ATTR(:get<MovementStatus>);
my %LabelType_of :ATTR(:get<LabelType>);
my %Description_of :ATTR(:get<Description>);
my %AuthorizationName_of :ATTR(:get<AuthorizationName>);

__PACKAGE__->_factory(
    [ qw(        MovementStatus
        LabelType
        Description
        AuthorizationName

    ) ],
    {
        'MovementStatus' => \%MovementStatus_of,
        'LabelType' => \%LabelType_of,
        'Description' => \%Description_of,
        'AuthorizationName' => \%AuthorizationName_of,
    },
    {
        'MovementStatus' => 'Shipment::FedEx::WSDL::TrackTypes::TrackReturnMovementStatusType',
        'LabelType' => 'Shipment::FedEx::WSDL::TrackTypes::TrackReturnLabelType',
        'Description' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'AuthorizationName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'MovementStatus' => 'MovementStatus',
        'LabelType' => 'LabelType',
        'Description' => 'Description',
        'AuthorizationName' => 'AuthorizationName',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::TrackTypes::TrackReturnDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TrackReturnDetail from the namespace http://fedex.com/ws/track/v9.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * MovementStatus


=item * LabelType


=item * Description


=item * AuthorizationName




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::TrackTypes::TrackReturnDetail
   MovementStatus => $some_value, # TrackReturnMovementStatusType
   LabelType => $some_value, # TrackReturnLabelType
   Description =>  $some_value, # string
   AuthorizationName =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

