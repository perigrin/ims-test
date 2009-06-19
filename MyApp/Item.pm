package MyApp::Item;
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
has 'identifier' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "identifier",
     node_type => "attribute",
     Name => "identifier",
     NamespaceURI => "",
     sort_order => 2,
 },
);
has 'identifierref' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "identifierref",
     node_type => "attribute",
     Name => "identifierref",
     NamespaceURI => "",
     sort_order => 3,
 },
);
has 'isvisible' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "isvisible",
     node_type => "attribute",
     Name => "isvisible",
     NamespaceURI => "",
     sort_order => 4,
 },
);
has 'item_collection' => (
     isa         => 'ArrayRef[MyApp::Item]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_item' },
     description => {
         sort_order => 5,
     },
);
has 'metadata_collection' => (
     isa         => 'ArrayRef[MyApp::Metadata]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_metadata' },
     description => {
         sort_order => 6,
     },
);
has 'parameters' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "parameters",
     node_type => "attribute",
     Name => "parameters",
     NamespaceURI => "",
     sort_order => 7,
 },
);
has 'title_collection' => (
     isa         => 'ArrayRef[MyApp::Title]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_title' },
     description => {
         sort_order => 8,
     },
);

no Moose;
1;
__END__
