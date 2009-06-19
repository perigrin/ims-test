package MyApp::Resources;
use Moose;
use MooseX::AttributeHelpers;
use XML::Toolkit;

has 'any_attribute' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "any_attribute",
     node_type => "attribute",
     Name => "any_attribute",
     NamespaceURI => "",
     sort_order => 0,
 },
);
has 'any_element_collection' => (
     isa         => 'ArrayRef[MyApp::Any_element]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_any_element' },
     description => {
         sort_order => 1,
     },
);
has 'base' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "xml",
     LocalName => "base",
     node_type => "attribute",
     Name => "xml:base",
     NamespaceURI => "http://www.w3.org/XML/1998/namespace",
     sort_order => 2,
 },
);
has 'resource_collection' => (
     isa         => 'ArrayRef[MyApp::Resource]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_resource' },
     description => {
         sort_order => 3,
     },
);

no Moose;
1;
__END__
