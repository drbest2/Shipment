
package Shipment::Purolator::WSDL::Elements::GetDocumentsResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://purolator.com/pws/datatypes/v1' }

__PACKAGE__->__set_name('GetDocumentsResponse');
__PACKAGE__->__set_nillable(1);
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();
use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    Shipment::Purolator::WSDL::Types::GetDocumentsResponseContainer
);

}

1;


=pod

=head1 NAME

Shipment::Purolator::WSDL::Elements::GetDocumentsResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetDocumentsResponse from the namespace http://purolator.com/pws/datatypes/v1.







=head1 METHODS

=head2 new

 my $element = Shipment::Purolator::WSDL::Elements::GetDocumentsResponse->new($data);

Constructor. The following data structure may be passed to new():

 { # Shipment::Purolator::WSDL::Types::GetDocumentsResponseContainer
   Documents =>  { # Shipment::Purolator::WSDL::Types::ArrayOfDocument
     Document =>  { # Shipment::Purolator::WSDL::Types::Document
       PIN =>  { # Shipment::Purolator::WSDL::Types::PIN
         Value =>  $some_value, # string
       },
       DocumentDetails =>  { # Shipment::Purolator::WSDL::Types::ArrayOfDocumentDetail
         DocumentDetail =>  { # Shipment::Purolator::WSDL::Types::DocumentDetail
           DocumentType =>  $some_value, # string
           Description =>  $some_value, # string
           DocumentStatus => $some_value, # DocumentStatus
           URL =>  $some_value, # string
         },
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut
