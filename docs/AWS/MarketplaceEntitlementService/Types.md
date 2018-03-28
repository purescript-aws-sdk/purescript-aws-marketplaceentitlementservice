## Module AWS.MarketplaceEntitlementService.Types

#### `options`

``` purescript
options :: Options
```

#### `Entitlement`

``` purescript
newtype Entitlement
  = Entitlement { "ProductCode" :: NullOrUndefined (ProductCode), "Dimension" :: NullOrUndefined (NonEmptyString), "CustomerIdentifier" :: NullOrUndefined (NonEmptyString), "Value" :: NullOrUndefined (EntitlementValue), "ExpirationDate" :: NullOrUndefined (Timestamp) }
```

<p>An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.</p>

##### Instances
``` purescript
Newtype Entitlement _
Generic Entitlement _
Show Entitlement
Decode Entitlement
Encode Entitlement
```

#### `newEntitlement`

``` purescript
newEntitlement :: Entitlement
```

Constructs Entitlement from required parameters

#### `newEntitlement'`

``` purescript
newEntitlement' :: ({ "ProductCode" :: NullOrUndefined (ProductCode), "Dimension" :: NullOrUndefined (NonEmptyString), "CustomerIdentifier" :: NullOrUndefined (NonEmptyString), "Value" :: NullOrUndefined (EntitlementValue), "ExpirationDate" :: NullOrUndefined (Timestamp) } -> { "ProductCode" :: NullOrUndefined (ProductCode), "Dimension" :: NullOrUndefined (NonEmptyString), "CustomerIdentifier" :: NullOrUndefined (NonEmptyString), "Value" :: NullOrUndefined (EntitlementValue), "ExpirationDate" :: NullOrUndefined (Timestamp) }) -> Entitlement
```

Constructs Entitlement's fields from required parameters

#### `EntitlementList`

``` purescript
newtype EntitlementList
  = EntitlementList (Array Entitlement)
```

##### Instances
``` purescript
Newtype EntitlementList _
Generic EntitlementList _
Show EntitlementList
Decode EntitlementList
Encode EntitlementList
```

#### `EntitlementValue`

``` purescript
newtype EntitlementValue
  = EntitlementValue { "IntegerValue" :: NullOrUndefined (Int), "DoubleValue" :: NullOrUndefined (Number), "BooleanValue" :: NullOrUndefined (Boolean), "StringValue" :: NullOrUndefined (String) }
```

<p>The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.</p>

##### Instances
``` purescript
Newtype EntitlementValue _
Generic EntitlementValue _
Show EntitlementValue
Decode EntitlementValue
Encode EntitlementValue
```

#### `newEntitlementValue`

``` purescript
newEntitlementValue :: EntitlementValue
```

Constructs EntitlementValue from required parameters

#### `newEntitlementValue'`

``` purescript
newEntitlementValue' :: ({ "IntegerValue" :: NullOrUndefined (Int), "DoubleValue" :: NullOrUndefined (Number), "BooleanValue" :: NullOrUndefined (Boolean), "StringValue" :: NullOrUndefined (String) } -> { "IntegerValue" :: NullOrUndefined (Int), "DoubleValue" :: NullOrUndefined (Number), "BooleanValue" :: NullOrUndefined (Boolean), "StringValue" :: NullOrUndefined (String) }) -> EntitlementValue
```

Constructs EntitlementValue's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `FilterValue`

``` purescript
newtype FilterValue
  = FilterValue String
```

##### Instances
``` purescript
Newtype FilterValue _
Generic FilterValue _
Show FilterValue
Decode FilterValue
Encode FilterValue
```

#### `FilterValueList`

``` purescript
newtype FilterValueList
  = FilterValueList (Array FilterValue)
```

##### Instances
``` purescript
Newtype FilterValueList _
Generic FilterValueList _
Show FilterValueList
Decode FilterValueList
Encode FilterValueList
```

#### `GetEntitlementFilterName`

``` purescript
newtype GetEntitlementFilterName
  = GetEntitlementFilterName String
```

##### Instances
``` purescript
Newtype GetEntitlementFilterName _
Generic GetEntitlementFilterName _
Show GetEntitlementFilterName
Decode GetEntitlementFilterName
Encode GetEntitlementFilterName
```

#### `GetEntitlementFilters`

``` purescript
newtype GetEntitlementFilters
  = GetEntitlementFilters (StrMap FilterValueList)
```

##### Instances
``` purescript
Newtype GetEntitlementFilters _
Generic GetEntitlementFilters _
Show GetEntitlementFilters
Decode GetEntitlementFilters
Encode GetEntitlementFilters
```

#### `GetEntitlementsRequest`

``` purescript
newtype GetEntitlementsRequest
  = GetEntitlementsRequest { "ProductCode" :: ProductCode, "Filter" :: NullOrUndefined (GetEntitlementFilters), "NextToken" :: NullOrUndefined (NonEmptyString), "MaxResults" :: NullOrUndefined (Int) }
```

<p>The GetEntitlementsRequest contains parameters for the GetEntitlements operation.</p>

##### Instances
``` purescript
Newtype GetEntitlementsRequest _
Generic GetEntitlementsRequest _
Show GetEntitlementsRequest
Decode GetEntitlementsRequest
Encode GetEntitlementsRequest
```

#### `newGetEntitlementsRequest`

``` purescript
newGetEntitlementsRequest :: ProductCode -> GetEntitlementsRequest
```

Constructs GetEntitlementsRequest from required parameters

#### `newGetEntitlementsRequest'`

``` purescript
newGetEntitlementsRequest' :: ProductCode -> ({ "ProductCode" :: ProductCode, "Filter" :: NullOrUndefined (GetEntitlementFilters), "NextToken" :: NullOrUndefined (NonEmptyString), "MaxResults" :: NullOrUndefined (Int) } -> { "ProductCode" :: ProductCode, "Filter" :: NullOrUndefined (GetEntitlementFilters), "NextToken" :: NullOrUndefined (NonEmptyString), "MaxResults" :: NullOrUndefined (Int) }) -> GetEntitlementsRequest
```

Constructs GetEntitlementsRequest's fields from required parameters

#### `GetEntitlementsResult`

``` purescript
newtype GetEntitlementsResult
  = GetEntitlementsResult { "Entitlements" :: NullOrUndefined (EntitlementList), "NextToken" :: NullOrUndefined (NonEmptyString) }
```

<p>The GetEntitlementsRequest contains results from the GetEntitlements operation.</p>

##### Instances
``` purescript
Newtype GetEntitlementsResult _
Generic GetEntitlementsResult _
Show GetEntitlementsResult
Decode GetEntitlementsResult
Encode GetEntitlementsResult
```

#### `newGetEntitlementsResult`

``` purescript
newGetEntitlementsResult :: GetEntitlementsResult
```

Constructs GetEntitlementsResult from required parameters

#### `newGetEntitlementsResult'`

``` purescript
newGetEntitlementsResult' :: ({ "Entitlements" :: NullOrUndefined (EntitlementList), "NextToken" :: NullOrUndefined (NonEmptyString) } -> { "Entitlements" :: NullOrUndefined (EntitlementList), "NextToken" :: NullOrUndefined (NonEmptyString) }) -> GetEntitlementsResult
```

Constructs GetEntitlementsResult's fields from required parameters

#### `InternalServiceErrorException`

``` purescript
newtype InternalServiceErrorException
  = InternalServiceErrorException { message :: NullOrUndefined (ErrorMessage) }
```

<p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>

##### Instances
``` purescript
Newtype InternalServiceErrorException _
Generic InternalServiceErrorException _
Show InternalServiceErrorException
Decode InternalServiceErrorException
Encode InternalServiceErrorException
```

#### `newInternalServiceErrorException`

``` purescript
newInternalServiceErrorException :: InternalServiceErrorException
```

Constructs InternalServiceErrorException from required parameters

#### `newInternalServiceErrorException'`

``` purescript
newInternalServiceErrorException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InternalServiceErrorException
```

Constructs InternalServiceErrorException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (ErrorMessage) }
```

<p>One or more parameters in your request was invalid.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `NonEmptyString`

``` purescript
newtype NonEmptyString
  = NonEmptyString String
```

##### Instances
``` purescript
Newtype NonEmptyString _
Generic NonEmptyString _
Show NonEmptyString
Decode NonEmptyString
Encode NonEmptyString
```

#### `ProductCode`

``` purescript
newtype ProductCode
  = ProductCode String
```

##### Instances
``` purescript
Newtype ProductCode _
Generic ProductCode _
Show ProductCode
Decode ProductCode
Encode ProductCode
```

#### `ThrottlingException`

``` purescript
newtype ThrottlingException
  = ThrottlingException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The calls to the GetEntitlements API are throttled.</p>

##### Instances
``` purescript
Newtype ThrottlingException _
Generic ThrottlingException _
Show ThrottlingException
Decode ThrottlingException
Encode ThrottlingException
```

#### `newThrottlingException`

``` purescript
newThrottlingException :: ThrottlingException
```

Constructs ThrottlingException from required parameters

#### `newThrottlingException'`

``` purescript
newThrottlingException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ThrottlingException
```

Constructs ThrottlingException's fields from required parameters


