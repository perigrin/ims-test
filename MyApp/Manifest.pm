package MyApp::Manifest;
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
     sort_order => 3,
 },
);
has 'manifest_collection' => (
     isa         => 'ArrayRef[MyApp::Manifest]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_manifest' },
     description => {
         sort_order => 4,
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
         sort_order => 5,
     },
);
has 'organizations_collection' => (
     isa         => 'ArrayRef[MyApp::Organizations]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_organizations' },
     description => {
         sort_order => 6,
     },
);
has 'p1' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "xmlns",
     LocalName => "p1",
     node_type => "attribute",
     Name => "xmlns:p1",
     NamespaceURI => "http://www.w3.org/2000/xmlns/",
     sort_order => 7,
 },
);
has 'resources_collection' => (
     isa         => 'ArrayRef[MyApp::Resources]',
     is          => 'ro',
     traits      => [ 'XML' ],
      metaclass   => 'Collection::Array',
     lazy        => 1,
     auto_deref  => 1,
     default     => sub { [] },
     provides    => { push => 'add_resources' },
     description => {
         sort_order => 8,
     },
);
has 'schemaLocation' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "xsi",
     LocalName => "schemaLocation",
     node_type => "attribute",
     Name => "xsi:schemaLocation",
     NamespaceURI => "http://www.w3.org/2001/XMLSchema-instance",
     sort_order => 9,
 },
);
has 'version' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "",
     LocalName => "version",
     node_type => "attribute",
     Name => "version",
     NamespaceURI => "",
     sort_order => 10,
 },
);
has 'xml' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "xmlns",
     LocalName => "xml",
     node_type => "attribute",
     Name => "xmlns:xml",
     NamespaceURI => "http://www.w3.org/2000/xmlns/",
     sort_order => 11,
 },
);
has 'xsi' => (
     isa         => 'Str',
     is          => 'ro',
     traits      => [ 'XML' ],
  description => {
     Prefix => "xmlns",
     LocalName => "xsi",
     node_type => "attribute",
     Name => "xmlns:xsi",
     NamespaceURI => "http://www.w3.org/2000/xmlns/",
     sort_order => 12,
 },
);

no Moose;
1;
__END__
