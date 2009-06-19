package MyApp::Organizations;
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
has 'default' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "default",
     node_type => "attribute",
     Name => "default",
     NamespaceURI => "",
     sort_order => 2,
 },
);
has 'organization_collection' => (
     isa         => 'ArrayRef[MyApp::Organization]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_organization' },
     description => {
         sort_order => 3,
     },
);

no Moose;
1;
__END__
