public type Name record {|
    string displayName;
|};

public const annotation Name ConnectorMetaData on source class, source function,
    source parameter, source type, source return, object field;
    