package Shipment::FedEx::WSDL::TrackTypes::NaftaCommodityDetail;
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

my %PreferenceCriterion_of :ATTR(:get<PreferenceCriterion>);
my %ProducerDetermination_of :ATTR(:get<ProducerDetermination>);
my %ProducerId_of :ATTR(:get<ProducerId>);
my %NetCostMethod_of :ATTR(:get<NetCostMethod>);
my %NetCostDateRange_of :ATTR(:get<NetCostDateRange>);

__PACKAGE__->_factory(
    [ qw(        PreferenceCriterion
        ProducerDetermination
        ProducerId
        NetCostMethod
        NetCostDateRange

    ) ],
    {
        'PreferenceCriterion' => \%PreferenceCriterion_of,
        'ProducerDetermination' => \%ProducerDetermination_of,
        'ProducerId' => \%ProducerId_of,
        'NetCostMethod' => \%NetCostMethod_of,
        'NetCostDateRange' => \%NetCostDateRange_of,
    },
    {
        'PreferenceCriterion' => 'Shipment::FedEx::WSDL::TrackTypes::NaftaPreferenceCriterionCode',
        'ProducerDetermination' => 'Shipment::FedEx::WSDL::TrackTypes::NaftaProducerDeterminationCode',
        'ProducerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'NetCostMethod' => 'Shipment::FedEx::WSDL::TrackTypes::NaftaNetCostMethodCode',
        'NetCostDateRange' => 'Shipment::FedEx::WSDL::TrackTypes::DateRange',
    },
    {

        'PreferenceCriterion' => 'PreferenceCriterion',
        'ProducerDetermination' => 'ProducerDetermination',
        'ProducerId' => 'ProducerId',
        'NetCostMethod' => 'NetCostMethod',
        'NetCostDateRange' => 'NetCostDateRange',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::TrackTypes::NaftaCommodityDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
NaftaCommodityDetail from the namespace http://fedex.com/ws/track/v9.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PreferenceCriterion


=item * ProducerDetermination


=item * ProducerId


=item * NetCostMethod


=item * NetCostDateRange




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::TrackTypes::NaftaCommodityDetail
   PreferenceCriterion => $some_value, # NaftaPreferenceCriterionCode
   ProducerDetermination => $some_value, # NaftaProducerDeterminationCode
   ProducerId =>  $some_value, # string
   NetCostMethod => $some_value, # NaftaNetCostMethodCode
   NetCostDateRange =>  { # Shipment::FedEx::WSDL::TrackTypes::DateRange
     Begins =>  $some_value, # date
     Ends =>  $some_value, # date
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

