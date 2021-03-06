// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: queries.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Queries.pbobjc.h"
 #import "Primitive.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - QueriesRoot

@implementation QueriesRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - QueriesRoot_FileDescriptor

static GPBFileDescriptor *QueriesRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"iroha.protocol"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - TxPaginationMeta

@implementation TxPaginationMeta

@dynamic optFirstTxHashOneOfCase;
@dynamic pageSize;
@dynamic firstTxHash;

typedef struct TxPaginationMeta__storage_ {
  uint32_t _has_storage_[2];
  uint32_t pageSize;
  NSString *firstTxHash;
} TxPaginationMeta__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pageSize",
        .dataTypeSpecific.className = NULL,
        .number = TxPaginationMeta_FieldNumber_PageSize,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TxPaginationMeta__storage_, pageSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "firstTxHash",
        .dataTypeSpecific.className = NULL,
        .number = TxPaginationMeta_FieldNumber_FirstTxHash,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(TxPaginationMeta__storage_, firstTxHash),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TxPaginationMeta class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TxPaginationMeta__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "optFirstTxHash",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void TxPaginationMeta_ClearOptFirstTxHashOneOfCase(TxPaginationMeta *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - GetAccount

@implementation GetAccount

@dynamic accountId;

typedef struct GetAccount__storage_ {
  uint32_t _has_storage_[1];
  NSString *accountId;
} GetAccount__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = NULL,
        .number = GetAccount_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetAccount__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetAccount class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetAccount__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetSignatories

@implementation GetSignatories

@dynamic accountId;

typedef struct GetSignatories__storage_ {
  uint32_t _has_storage_[1];
  NSString *accountId;
} GetSignatories__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = NULL,
        .number = GetSignatories_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetSignatories__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetSignatories class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetSignatories__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetAccountTransactions

@implementation GetAccountTransactions

@dynamic accountId;
@dynamic hasPaginationMeta, paginationMeta;

typedef struct GetAccountTransactions__storage_ {
  uint32_t _has_storage_[1];
  NSString *accountId;
  TxPaginationMeta *paginationMeta;
} GetAccountTransactions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = NULL,
        .number = GetAccountTransactions_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetAccountTransactions__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "paginationMeta",
        .dataTypeSpecific.className = GPBStringifySymbol(TxPaginationMeta),
        .number = GetAccountTransactions_FieldNumber_PaginationMeta,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GetAccountTransactions__storage_, paginationMeta),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetAccountTransactions class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetAccountTransactions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetAccountAssetTransactions

@implementation GetAccountAssetTransactions

@dynamic accountId;
@dynamic assetId;
@dynamic hasPaginationMeta, paginationMeta;

typedef struct GetAccountAssetTransactions__storage_ {
  uint32_t _has_storage_[1];
  NSString *accountId;
  NSString *assetId;
  TxPaginationMeta *paginationMeta;
} GetAccountAssetTransactions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = NULL,
        .number = GetAccountAssetTransactions_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetAccountAssetTransactions__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "assetId",
        .dataTypeSpecific.className = NULL,
        .number = GetAccountAssetTransactions_FieldNumber_AssetId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GetAccountAssetTransactions__storage_, assetId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "paginationMeta",
        .dataTypeSpecific.className = GPBStringifySymbol(TxPaginationMeta),
        .number = GetAccountAssetTransactions_FieldNumber_PaginationMeta,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GetAccountAssetTransactions__storage_, paginationMeta),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetAccountAssetTransactions class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetAccountAssetTransactions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetTransactions

@implementation GetTransactions

@dynamic txHashesArray, txHashesArray_Count;

typedef struct GetTransactions__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *txHashesArray;
} GetTransactions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "txHashesArray",
        .dataTypeSpecific.className = NULL,
        .number = GetTransactions_FieldNumber_TxHashesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GetTransactions__storage_, txHashesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetTransactions class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetTransactions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetAccountAssets

@implementation GetAccountAssets

@dynamic accountId;

typedef struct GetAccountAssets__storage_ {
  uint32_t _has_storage_[1];
  NSString *accountId;
} GetAccountAssets__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = NULL,
        .number = GetAccountAssets_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetAccountAssets__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetAccountAssets class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetAccountAssets__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetAccountDetail

@implementation GetAccountDetail

@dynamic optAccountIdOneOfCase;
@dynamic optKeyOneOfCase;
@dynamic optWriterOneOfCase;
@dynamic accountId;
@dynamic key;
@dynamic writer;

typedef struct GetAccountDetail__storage_ {
  uint32_t _has_storage_[4];
  NSString *accountId;
  NSString *key;
  NSString *writer;
} GetAccountDetail__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = NULL,
        .number = GetAccountDetail_FieldNumber_AccountId,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GetAccountDetail__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "key",
        .dataTypeSpecific.className = NULL,
        .number = GetAccountDetail_FieldNumber_Key,
        .hasIndex = -2,
        .offset = (uint32_t)offsetof(GetAccountDetail__storage_, key),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "writer",
        .dataTypeSpecific.className = NULL,
        .number = GetAccountDetail_FieldNumber_Writer,
        .hasIndex = -3,
        .offset = (uint32_t)offsetof(GetAccountDetail__storage_, writer),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetAccountDetail class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetAccountDetail__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "optAccountId",
      "optKey",
      "optWriter",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void GetAccountDetail_ClearOptAccountIdOneOfCase(GetAccountDetail *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
void GetAccountDetail_ClearOptKeyOneOfCase(GetAccountDetail *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:1];
  GPBMaybeClearOneof(message, oneof, -2, 0);
}
void GetAccountDetail_ClearOptWriterOneOfCase(GetAccountDetail *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:2];
  GPBMaybeClearOneof(message, oneof, -3, 0);
}
#pragma mark - GetAssetInfo

@implementation GetAssetInfo

@dynamic assetId;

typedef struct GetAssetInfo__storage_ {
  uint32_t _has_storage_[1];
  NSString *assetId;
} GetAssetInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "assetId",
        .dataTypeSpecific.className = NULL,
        .number = GetAssetInfo_FieldNumber_AssetId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetAssetInfo__storage_, assetId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetAssetInfo class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetAssetInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetRoles

@implementation GetRoles


typedef struct GetRoles__storage_ {
  uint32_t _has_storage_[1];
} GetRoles__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetRoles class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                   storageSize:sizeof(GetRoles__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetRolePermissions

@implementation GetRolePermissions

@dynamic roleId;

typedef struct GetRolePermissions__storage_ {
  uint32_t _has_storage_[1];
  NSString *roleId;
} GetRolePermissions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "roleId",
        .dataTypeSpecific.className = NULL,
        .number = GetRolePermissions_FieldNumber_RoleId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetRolePermissions__storage_, roleId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetRolePermissions class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetRolePermissions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetPendingTransactions

@implementation GetPendingTransactions


typedef struct GetPendingTransactions__storage_ {
  uint32_t _has_storage_[1];
} GetPendingTransactions__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetPendingTransactions class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                   storageSize:sizeof(GetPendingTransactions__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - QueryPayloadMeta

@implementation QueryPayloadMeta

@dynamic createdTime;
@dynamic creatorAccountId;
@dynamic queryCounter;

typedef struct QueryPayloadMeta__storage_ {
  uint32_t _has_storage_[1];
  NSString *creatorAccountId;
  uint64_t createdTime;
  uint64_t queryCounter;
} QueryPayloadMeta__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "createdTime",
        .dataTypeSpecific.className = NULL,
        .number = QueryPayloadMeta_FieldNumber_CreatedTime,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(QueryPayloadMeta__storage_, createdTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "creatorAccountId",
        .dataTypeSpecific.className = NULL,
        .number = QueryPayloadMeta_FieldNumber_CreatorAccountId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(QueryPayloadMeta__storage_, creatorAccountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "queryCounter",
        .dataTypeSpecific.className = NULL,
        .number = QueryPayloadMeta_FieldNumber_QueryCounter,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(QueryPayloadMeta__storage_, queryCounter),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[QueryPayloadMeta class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(QueryPayloadMeta__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Query

@implementation Query

@dynamic hasPayload, payload;
@dynamic hasSignature, signature;

typedef struct Query__storage_ {
  uint32_t _has_storage_[1];
  Query_Payload *payload;
  Signature *signature;
} Query__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payload",
        .dataTypeSpecific.className = GPBStringifySymbol(Query_Payload),
        .number = Query_FieldNumber_Payload,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Query__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "signature",
        .dataTypeSpecific.className = GPBStringifySymbol(Signature),
        .number = Query_FieldNumber_Signature,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Query__storage_, signature),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Query class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Query__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Query_Payload

@implementation Query_Payload

@dynamic queryOneOfCase;
@dynamic hasMeta, meta;
@dynamic getAccount;
@dynamic getSignatories;
@dynamic getAccountTransactions;
@dynamic getAccountAssetTransactions;
@dynamic getTransactions;
@dynamic getAccountAssets;
@dynamic getAccountDetail;
@dynamic getRoles;
@dynamic getRolePermissions;
@dynamic getAssetInfo;
@dynamic getPendingTransactions;

typedef struct Query_Payload__storage_ {
  uint32_t _has_storage_[2];
  QueryPayloadMeta *meta;
  GetAccount *getAccount;
  GetSignatories *getSignatories;
  GetAccountTransactions *getAccountTransactions;
  GetAccountAssetTransactions *getAccountAssetTransactions;
  GetTransactions *getTransactions;
  GetAccountAssets *getAccountAssets;
  GetAccountDetail *getAccountDetail;
  GetRoles *getRoles;
  GetRolePermissions *getRolePermissions;
  GetAssetInfo *getAssetInfo;
  GetPendingTransactions *getPendingTransactions;
} Query_Payload__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "meta",
        .dataTypeSpecific.className = GPBStringifySymbol(QueryPayloadMeta),
        .number = Query_Payload_FieldNumber_Meta,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, meta),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getAccount",
        .dataTypeSpecific.className = GPBStringifySymbol(GetAccount),
        .number = Query_Payload_FieldNumber_GetAccount,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getAccount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getSignatories",
        .dataTypeSpecific.className = GPBStringifySymbol(GetSignatories),
        .number = Query_Payload_FieldNumber_GetSignatories,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getSignatories),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getAccountTransactions",
        .dataTypeSpecific.className = GPBStringifySymbol(GetAccountTransactions),
        .number = Query_Payload_FieldNumber_GetAccountTransactions,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getAccountTransactions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getAccountAssetTransactions",
        .dataTypeSpecific.className = GPBStringifySymbol(GetAccountAssetTransactions),
        .number = Query_Payload_FieldNumber_GetAccountAssetTransactions,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getAccountAssetTransactions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getTransactions",
        .dataTypeSpecific.className = GPBStringifySymbol(GetTransactions),
        .number = Query_Payload_FieldNumber_GetTransactions,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getTransactions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getAccountAssets",
        .dataTypeSpecific.className = GPBStringifySymbol(GetAccountAssets),
        .number = Query_Payload_FieldNumber_GetAccountAssets,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getAccountAssets),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getAccountDetail",
        .dataTypeSpecific.className = GPBStringifySymbol(GetAccountDetail),
        .number = Query_Payload_FieldNumber_GetAccountDetail,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getAccountDetail),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getRoles",
        .dataTypeSpecific.className = GPBStringifySymbol(GetRoles),
        .number = Query_Payload_FieldNumber_GetRoles,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getRoles),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getRolePermissions",
        .dataTypeSpecific.className = GPBStringifySymbol(GetRolePermissions),
        .number = Query_Payload_FieldNumber_GetRolePermissions,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getRolePermissions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getAssetInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(GetAssetInfo),
        .number = Query_Payload_FieldNumber_GetAssetInfo,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getAssetInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "getPendingTransactions",
        .dataTypeSpecific.className = GPBStringifySymbol(GetPendingTransactions),
        .number = Query_Payload_FieldNumber_GetPendingTransactions,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Query_Payload__storage_, getPendingTransactions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Query_Payload class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Query_Payload__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "query",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(Query)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void Query_Payload_ClearQueryOneOfCase(Query_Payload *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - BlocksQuery

@implementation BlocksQuery

@dynamic hasMeta, meta;
@dynamic hasSignature, signature;

typedef struct BlocksQuery__storage_ {
  uint32_t _has_storage_[1];
  QueryPayloadMeta *meta;
  Signature *signature;
} BlocksQuery__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "meta",
        .dataTypeSpecific.className = GPBStringifySymbol(QueryPayloadMeta),
        .number = BlocksQuery_FieldNumber_Meta,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(BlocksQuery__storage_, meta),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "signature",
        .dataTypeSpecific.className = GPBStringifySymbol(Signature),
        .number = BlocksQuery_FieldNumber_Signature,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(BlocksQuery__storage_, signature),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[BlocksQuery class]
                                     rootClass:[QueriesRoot class]
                                          file:QueriesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(BlocksQuery__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
