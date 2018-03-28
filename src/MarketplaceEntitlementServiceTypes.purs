
module AWS.MarketplaceEntitlementService.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.</p>
newtype Entitlement = Entitlement 
  { "ProductCode" :: NullOrUndefined (ProductCode)
  , "Dimension" :: NullOrUndefined (NonEmptyString)
  , "CustomerIdentifier" :: NullOrUndefined (NonEmptyString)
  , "Value" :: NullOrUndefined (EntitlementValue)
  , "ExpirationDate" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeEntitlement :: Newtype Entitlement _
derive instance repGenericEntitlement :: Generic Entitlement _
instance showEntitlement :: Show Entitlement where show = genericShow
instance decodeEntitlement :: Decode Entitlement where decode = genericDecode options
instance encodeEntitlement :: Encode Entitlement where encode = genericEncode options

-- | Constructs Entitlement from required parameters
newEntitlement :: Entitlement
newEntitlement  = Entitlement { "CustomerIdentifier": (NullOrUndefined Nothing), "Dimension": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "ProductCode": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Entitlement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntitlement' :: ( { "ProductCode" :: NullOrUndefined (ProductCode) , "Dimension" :: NullOrUndefined (NonEmptyString) , "CustomerIdentifier" :: NullOrUndefined (NonEmptyString) , "Value" :: NullOrUndefined (EntitlementValue) , "ExpirationDate" :: NullOrUndefined (Types.Timestamp) } -> {"ProductCode" :: NullOrUndefined (ProductCode) , "Dimension" :: NullOrUndefined (NonEmptyString) , "CustomerIdentifier" :: NullOrUndefined (NonEmptyString) , "Value" :: NullOrUndefined (EntitlementValue) , "ExpirationDate" :: NullOrUndefined (Types.Timestamp) } ) -> Entitlement
newEntitlement'  customize = (Entitlement <<< customize) { "CustomerIdentifier": (NullOrUndefined Nothing), "Dimension": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "ProductCode": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype EntitlementList = EntitlementList (Array Entitlement)
derive instance newtypeEntitlementList :: Newtype EntitlementList _
derive instance repGenericEntitlementList :: Generic EntitlementList _
instance showEntitlementList :: Show EntitlementList where show = genericShow
instance decodeEntitlementList :: Decode EntitlementList where decode = genericDecode options
instance encodeEntitlementList :: Encode EntitlementList where encode = genericEncode options



-- | <p>The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.</p>
newtype EntitlementValue = EntitlementValue 
  { "IntegerValue" :: NullOrUndefined (Int)
  , "DoubleValue" :: NullOrUndefined (Number)
  , "BooleanValue" :: NullOrUndefined (Boolean)
  , "StringValue" :: NullOrUndefined (String)
  }
derive instance newtypeEntitlementValue :: Newtype EntitlementValue _
derive instance repGenericEntitlementValue :: Generic EntitlementValue _
instance showEntitlementValue :: Show EntitlementValue where show = genericShow
instance decodeEntitlementValue :: Decode EntitlementValue where decode = genericDecode options
instance encodeEntitlementValue :: Encode EntitlementValue where encode = genericEncode options

-- | Constructs EntitlementValue from required parameters
newEntitlementValue :: EntitlementValue
newEntitlementValue  = EntitlementValue { "BooleanValue": (NullOrUndefined Nothing), "DoubleValue": (NullOrUndefined Nothing), "IntegerValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }

-- | Constructs EntitlementValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntitlementValue' :: ( { "IntegerValue" :: NullOrUndefined (Int) , "DoubleValue" :: NullOrUndefined (Number) , "BooleanValue" :: NullOrUndefined (Boolean) , "StringValue" :: NullOrUndefined (String) } -> {"IntegerValue" :: NullOrUndefined (Int) , "DoubleValue" :: NullOrUndefined (Number) , "BooleanValue" :: NullOrUndefined (Boolean) , "StringValue" :: NullOrUndefined (String) } ) -> EntitlementValue
newEntitlementValue'  customize = (EntitlementValue <<< customize) { "BooleanValue": (NullOrUndefined Nothing), "DoubleValue": (NullOrUndefined Nothing), "IntegerValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype FilterValue = FilterValue String
derive instance newtypeFilterValue :: Newtype FilterValue _
derive instance repGenericFilterValue :: Generic FilterValue _
instance showFilterValue :: Show FilterValue where show = genericShow
instance decodeFilterValue :: Decode FilterValue where decode = genericDecode options
instance encodeFilterValue :: Encode FilterValue where encode = genericEncode options



newtype FilterValueList = FilterValueList (Array FilterValue)
derive instance newtypeFilterValueList :: Newtype FilterValueList _
derive instance repGenericFilterValueList :: Generic FilterValueList _
instance showFilterValueList :: Show FilterValueList where show = genericShow
instance decodeFilterValueList :: Decode FilterValueList where decode = genericDecode options
instance encodeFilterValueList :: Encode FilterValueList where encode = genericEncode options



newtype GetEntitlementFilterName = GetEntitlementFilterName String
derive instance newtypeGetEntitlementFilterName :: Newtype GetEntitlementFilterName _
derive instance repGenericGetEntitlementFilterName :: Generic GetEntitlementFilterName _
instance showGetEntitlementFilterName :: Show GetEntitlementFilterName where show = genericShow
instance decodeGetEntitlementFilterName :: Decode GetEntitlementFilterName where decode = genericDecode options
instance encodeGetEntitlementFilterName :: Encode GetEntitlementFilterName where encode = genericEncode options



newtype GetEntitlementFilters = GetEntitlementFilters (StrMap.StrMap FilterValueList)
derive instance newtypeGetEntitlementFilters :: Newtype GetEntitlementFilters _
derive instance repGenericGetEntitlementFilters :: Generic GetEntitlementFilters _
instance showGetEntitlementFilters :: Show GetEntitlementFilters where show = genericShow
instance decodeGetEntitlementFilters :: Decode GetEntitlementFilters where decode = genericDecode options
instance encodeGetEntitlementFilters :: Encode GetEntitlementFilters where encode = genericEncode options



-- | <p>The GetEntitlementsRequest contains parameters for the GetEntitlements operation.</p>
newtype GetEntitlementsRequest = GetEntitlementsRequest 
  { "ProductCode" :: (ProductCode)
  , "Filter" :: NullOrUndefined (GetEntitlementFilters)
  , "NextToken" :: NullOrUndefined (NonEmptyString)
  , "MaxResults" :: NullOrUndefined (Int)
  }
derive instance newtypeGetEntitlementsRequest :: Newtype GetEntitlementsRequest _
derive instance repGenericGetEntitlementsRequest :: Generic GetEntitlementsRequest _
instance showGetEntitlementsRequest :: Show GetEntitlementsRequest where show = genericShow
instance decodeGetEntitlementsRequest :: Decode GetEntitlementsRequest where decode = genericDecode options
instance encodeGetEntitlementsRequest :: Encode GetEntitlementsRequest where encode = genericEncode options

-- | Constructs GetEntitlementsRequest from required parameters
newGetEntitlementsRequest :: ProductCode -> GetEntitlementsRequest
newGetEntitlementsRequest _ProductCode = GetEntitlementsRequest { "ProductCode": _ProductCode, "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetEntitlementsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEntitlementsRequest' :: ProductCode -> ( { "ProductCode" :: (ProductCode) , "Filter" :: NullOrUndefined (GetEntitlementFilters) , "NextToken" :: NullOrUndefined (NonEmptyString) , "MaxResults" :: NullOrUndefined (Int) } -> {"ProductCode" :: (ProductCode) , "Filter" :: NullOrUndefined (GetEntitlementFilters) , "NextToken" :: NullOrUndefined (NonEmptyString) , "MaxResults" :: NullOrUndefined (Int) } ) -> GetEntitlementsRequest
newGetEntitlementsRequest' _ProductCode customize = (GetEntitlementsRequest <<< customize) { "ProductCode": _ProductCode, "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>The GetEntitlementsRequest contains results from the GetEntitlements operation.</p>
newtype GetEntitlementsResult = GetEntitlementsResult 
  { "Entitlements" :: NullOrUndefined (EntitlementList)
  , "NextToken" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeGetEntitlementsResult :: Newtype GetEntitlementsResult _
derive instance repGenericGetEntitlementsResult :: Generic GetEntitlementsResult _
instance showGetEntitlementsResult :: Show GetEntitlementsResult where show = genericShow
instance decodeGetEntitlementsResult :: Decode GetEntitlementsResult where decode = genericDecode options
instance encodeGetEntitlementsResult :: Encode GetEntitlementsResult where encode = genericEncode options

-- | Constructs GetEntitlementsResult from required parameters
newGetEntitlementsResult :: GetEntitlementsResult
newGetEntitlementsResult  = GetEntitlementsResult { "Entitlements": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetEntitlementsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEntitlementsResult' :: ( { "Entitlements" :: NullOrUndefined (EntitlementList) , "NextToken" :: NullOrUndefined (NonEmptyString) } -> {"Entitlements" :: NullOrUndefined (EntitlementList) , "NextToken" :: NullOrUndefined (NonEmptyString) } ) -> GetEntitlementsResult
newGetEntitlementsResult'  customize = (GetEntitlementsResult <<< customize) { "Entitlements": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>
newtype InternalServiceErrorException = InternalServiceErrorException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServiceErrorException :: Newtype InternalServiceErrorException _
derive instance repGenericInternalServiceErrorException :: Generic InternalServiceErrorException _
instance showInternalServiceErrorException :: Show InternalServiceErrorException where show = genericShow
instance decodeInternalServiceErrorException :: Decode InternalServiceErrorException where decode = genericDecode options
instance encodeInternalServiceErrorException :: Encode InternalServiceErrorException where encode = genericEncode options

-- | Constructs InternalServiceErrorException from required parameters
newInternalServiceErrorException :: InternalServiceErrorException
newInternalServiceErrorException  = InternalServiceErrorException { "message": (NullOrUndefined Nothing) }

-- | Constructs InternalServiceErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServiceErrorException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InternalServiceErrorException
newInternalServiceErrorException'  customize = (InternalServiceErrorException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>One or more parameters in your request was invalid.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype NonEmptyString = NonEmptyString String
derive instance newtypeNonEmptyString :: Newtype NonEmptyString _
derive instance repGenericNonEmptyString :: Generic NonEmptyString _
instance showNonEmptyString :: Show NonEmptyString where show = genericShow
instance decodeNonEmptyString :: Decode NonEmptyString where decode = genericDecode options
instance encodeNonEmptyString :: Encode NonEmptyString where encode = genericEncode options



newtype ProductCode = ProductCode String
derive instance newtypeProductCode :: Newtype ProductCode _
derive instance repGenericProductCode :: Generic ProductCode _
instance showProductCode :: Show ProductCode where show = genericShow
instance decodeProductCode :: Decode ProductCode where decode = genericDecode options
instance encodeProductCode :: Encode ProductCode where encode = genericEncode options



-- | <p>The calls to the GetEntitlements API are throttled.</p>
newtype ThrottlingException = ThrottlingException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeThrottlingException :: Newtype ThrottlingException _
derive instance repGenericThrottlingException :: Generic ThrottlingException _
instance showThrottlingException :: Show ThrottlingException where show = genericShow
instance decodeThrottlingException :: Decode ThrottlingException where decode = genericDecode options
instance encodeThrottlingException :: Encode ThrottlingException where encode = genericEncode options

-- | Constructs ThrottlingException from required parameters
newThrottlingException :: ThrottlingException
newThrottlingException  = ThrottlingException { "message": (NullOrUndefined Nothing) }

-- | Constructs ThrottlingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottlingException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ThrottlingException
newThrottlingException'  customize = (ThrottlingException <<< customize) { "message": (NullOrUndefined Nothing) }

