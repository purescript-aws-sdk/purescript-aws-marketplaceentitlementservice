
module AWS.MarketplaceEntitlementService.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MarketplaceEntitlementService as MarketplaceEntitlementService
import AWS.MarketplaceEntitlementService.Types as MarketplaceEntitlementServiceTypes


-- | <p>GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.</p>
getEntitlements :: forall eff. MarketplaceEntitlementService.Service -> MarketplaceEntitlementServiceTypes.GetEntitlementsRequest -> Aff (exception :: EXCEPTION | eff) MarketplaceEntitlementServiceTypes.GetEntitlementsResult
getEntitlements (MarketplaceEntitlementService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getEntitlements"
