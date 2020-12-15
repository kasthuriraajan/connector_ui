# connector_ui

This package contains custom annotation for Connector Metadata - Display name

To use this in connectors:

Import this package in required ballerina connector file.

## Sample

```ballerina

import kasthuriraajan/connector_ui;
 
@connector_ui:ConnectorMetadata { displayName: "Salesforce" }
 
public client class SFDCClient {
 
   @connector_ui:ConnectorMetadata { displayName: "Foo Connector operation" }
   public remote function getAccounts(
                 @connector_ui:ConnectorMetadata { displayName: "Query" } string query, 
                 @connector_ui:ConnectorMetadata { displayName: "Max Elements" } int batchSize)
           return returns @tainted error
              | @choreo_ui:ConnectorMetadata { displayName: "Account" } Account {
               // impl
           }
  
};
