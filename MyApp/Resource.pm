package MyApp::Resource;
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
has 'dependency_collection' => (
     isa         => 'ArrayRef[MyApp::Dependency]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_dependency' },
     description => {
         sort_order => 3,
     },
);
has 'file_collection' => (
     isa         => 'ArrayRef[MyApp::File]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_file' },
     description => {
         sort_order => 4,
     },
);
has 'href' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "href",
     node_type => "attribute",
     Name => "href",
     NamespaceURI => "",
     sort_order => 5,
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
     sort_order => 6,
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
         sort_order => 7,
     },
);
has 'type' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "type",
     node_type => "attribute",
     Name => "type",
     NamespaceURI => "",
     sort_order => 8,
 },
);

no Moose;
1;
__END__
