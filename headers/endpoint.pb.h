// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: endpoint.proto

#ifndef PROTOBUF_endpoint_2eproto__INCLUDED
#define PROTOBUF_endpoint_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3005000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3005001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/generated_enum_reflection.h>
#include <google/protobuf/unknown_field_set.h>
#include "block.pb.h"
#include "queries.pb.h"
#include <google/protobuf/empty.pb.h>
#include "responses.pb.h"
// @@protoc_insertion_point(includes)

namespace protobuf_endpoint_2eproto {
// Internal implementation detail -- do not use these members.
struct TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[2];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void AddDescriptors();
void InitDefaultsToriiResponseImpl();
void InitDefaultsToriiResponse();
void InitDefaultsTxStatusRequestImpl();
void InitDefaultsTxStatusRequest();
inline void InitDefaults() {
  InitDefaultsToriiResponse();
  InitDefaultsTxStatusRequest();
}
}  // namespace protobuf_endpoint_2eproto
namespace iroha {
namespace protocol {
class ToriiResponse;
class ToriiResponseDefaultTypeInternal;
extern ToriiResponseDefaultTypeInternal _ToriiResponse_default_instance_;
class TxStatusRequest;
class TxStatusRequestDefaultTypeInternal;
extern TxStatusRequestDefaultTypeInternal _TxStatusRequest_default_instance_;
}  // namespace protocol
}  // namespace iroha
namespace iroha {
namespace protocol {

enum TxStatus {
  STATELESS_VALIDATION_FAILED = 0,
  STATELESS_VALIDATION_SUCCESS = 1,
  STATEFUL_VALIDATION_FAILED = 2,
  STATEFUL_VALIDATION_SUCCESS = 3,
  COMMITTED = 4,
  MST_EXPIRED = 5,
  NOT_RECEIVED = 6,
  TxStatus_INT_MIN_SENTINEL_DO_NOT_USE_ = ::google::protobuf::kint32min,
  TxStatus_INT_MAX_SENTINEL_DO_NOT_USE_ = ::google::protobuf::kint32max
};
bool TxStatus_IsValid(int value);
const TxStatus TxStatus_MIN = STATELESS_VALIDATION_FAILED;
const TxStatus TxStatus_MAX = NOT_RECEIVED;
const int TxStatus_ARRAYSIZE = TxStatus_MAX + 1;

const ::google::protobuf::EnumDescriptor* TxStatus_descriptor();
inline const ::std::string& TxStatus_Name(TxStatus value) {
  return ::google::protobuf::internal::NameOfEnum(
    TxStatus_descriptor(), value);
}
inline bool TxStatus_Parse(
    const ::std::string& name, TxStatus* value) {
  return ::google::protobuf::internal::ParseNamedEnum<TxStatus>(
    TxStatus_descriptor(), name, value);
}
// ===================================================================

class ToriiResponse : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:iroha.protocol.ToriiResponse) */ {
 public:
  ToriiResponse();
  virtual ~ToriiResponse();

  ToriiResponse(const ToriiResponse& from);

  inline ToriiResponse& operator=(const ToriiResponse& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  ToriiResponse(ToriiResponse&& from) noexcept
    : ToriiResponse() {
    *this = ::std::move(from);
  }

  inline ToriiResponse& operator=(ToriiResponse&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const ToriiResponse& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const ToriiResponse* internal_default_instance() {
    return reinterpret_cast<const ToriiResponse*>(
               &_ToriiResponse_default_instance_);
  }
  static PROTOBUF_CONSTEXPR int const kIndexInFileMessages =
    0;

  void Swap(ToriiResponse* other);
  friend void swap(ToriiResponse& a, ToriiResponse& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline ToriiResponse* New() const PROTOBUF_FINAL { return New(NULL); }

  ToriiResponse* New(::google::protobuf::Arena* arena) const PROTOBUF_FINAL;
  void CopyFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void MergeFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void CopyFrom(const ToriiResponse& from);
  void MergeFrom(const ToriiResponse& from);
  void Clear() PROTOBUF_FINAL;
  bool IsInitialized() const PROTOBUF_FINAL;

  size_t ByteSizeLong() const PROTOBUF_FINAL;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) PROTOBUF_FINAL;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const PROTOBUF_FINAL;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const PROTOBUF_FINAL;
  int GetCachedSize() const PROTOBUF_FINAL { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const PROTOBUF_FINAL;
  void InternalSwap(ToriiResponse* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const PROTOBUF_FINAL;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // bytes tx_hash = 2;
  void clear_tx_hash();
  static const int kTxHashFieldNumber = 2;
  const ::std::string& tx_hash() const;
  void set_tx_hash(const ::std::string& value);
  #if LANG_CXX11
  void set_tx_hash(::std::string&& value);
  #endif
  void set_tx_hash(const char* value);
  void set_tx_hash(const void* value, size_t size);
  ::std::string* mutable_tx_hash();
  ::std::string* release_tx_hash();
  void set_allocated_tx_hash(::std::string* tx_hash);

  // string error_message = 3;
  void clear_error_message();
  static const int kErrorMessageFieldNumber = 3;
  const ::std::string& error_message() const;
  void set_error_message(const ::std::string& value);
  #if LANG_CXX11
  void set_error_message(::std::string&& value);
  #endif
  void set_error_message(const char* value);
  void set_error_message(const char* value, size_t size);
  ::std::string* mutable_error_message();
  ::std::string* release_error_message();
  void set_allocated_error_message(::std::string* error_message);

  // .iroha.protocol.TxStatus tx_status = 1;
  void clear_tx_status();
  static const int kTxStatusFieldNumber = 1;
  ::iroha::protocol::TxStatus tx_status() const;
  void set_tx_status(::iroha::protocol::TxStatus value);

  // @@protoc_insertion_point(class_scope:iroha.protocol.ToriiResponse)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::ArenaStringPtr tx_hash_;
  ::google::protobuf::internal::ArenaStringPtr error_message_;
  int tx_status_;
  mutable int _cached_size_;
  friend struct ::protobuf_endpoint_2eproto::TableStruct;
  friend void ::protobuf_endpoint_2eproto::InitDefaultsToriiResponseImpl();
};
// -------------------------------------------------------------------

class TxStatusRequest : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:iroha.protocol.TxStatusRequest) */ {
 public:
  TxStatusRequest();
  virtual ~TxStatusRequest();

  TxStatusRequest(const TxStatusRequest& from);

  inline TxStatusRequest& operator=(const TxStatusRequest& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  TxStatusRequest(TxStatusRequest&& from) noexcept
    : TxStatusRequest() {
    *this = ::std::move(from);
  }

  inline TxStatusRequest& operator=(TxStatusRequest&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const TxStatusRequest& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const TxStatusRequest* internal_default_instance() {
    return reinterpret_cast<const TxStatusRequest*>(
               &_TxStatusRequest_default_instance_);
  }
  static PROTOBUF_CONSTEXPR int const kIndexInFileMessages =
    1;

  void Swap(TxStatusRequest* other);
  friend void swap(TxStatusRequest& a, TxStatusRequest& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline TxStatusRequest* New() const PROTOBUF_FINAL { return New(NULL); }

  TxStatusRequest* New(::google::protobuf::Arena* arena) const PROTOBUF_FINAL;
  void CopyFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void MergeFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void CopyFrom(const TxStatusRequest& from);
  void MergeFrom(const TxStatusRequest& from);
  void Clear() PROTOBUF_FINAL;
  bool IsInitialized() const PROTOBUF_FINAL;

  size_t ByteSizeLong() const PROTOBUF_FINAL;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) PROTOBUF_FINAL;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const PROTOBUF_FINAL;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const PROTOBUF_FINAL;
  int GetCachedSize() const PROTOBUF_FINAL { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const PROTOBUF_FINAL;
  void InternalSwap(TxStatusRequest* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const PROTOBUF_FINAL;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // bytes tx_hash = 1;
  void clear_tx_hash();
  static const int kTxHashFieldNumber = 1;
  const ::std::string& tx_hash() const;
  void set_tx_hash(const ::std::string& value);
  #if LANG_CXX11
  void set_tx_hash(::std::string&& value);
  #endif
  void set_tx_hash(const char* value);
  void set_tx_hash(const void* value, size_t size);
  ::std::string* mutable_tx_hash();
  ::std::string* release_tx_hash();
  void set_allocated_tx_hash(::std::string* tx_hash);

  // @@protoc_insertion_point(class_scope:iroha.protocol.TxStatusRequest)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::ArenaStringPtr tx_hash_;
  mutable int _cached_size_;
  friend struct ::protobuf_endpoint_2eproto::TableStruct;
  friend void ::protobuf_endpoint_2eproto::InitDefaultsTxStatusRequestImpl();
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// ToriiResponse

// .iroha.protocol.TxStatus tx_status = 1;
inline void ToriiResponse::clear_tx_status() {
  tx_status_ = 0;
}
inline ::iroha::protocol::TxStatus ToriiResponse::tx_status() const {
  // @@protoc_insertion_point(field_get:iroha.protocol.ToriiResponse.tx_status)
  return static_cast< ::iroha::protocol::TxStatus >(tx_status_);
}
inline void ToriiResponse::set_tx_status(::iroha::protocol::TxStatus value) {
  
  tx_status_ = value;
  // @@protoc_insertion_point(field_set:iroha.protocol.ToriiResponse.tx_status)
}

// bytes tx_hash = 2;
inline void ToriiResponse::clear_tx_hash() {
  tx_hash_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& ToriiResponse::tx_hash() const {
  // @@protoc_insertion_point(field_get:iroha.protocol.ToriiResponse.tx_hash)
  return tx_hash_.GetNoArena();
}
inline void ToriiResponse::set_tx_hash(const ::std::string& value) {
  
  tx_hash_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:iroha.protocol.ToriiResponse.tx_hash)
}
#if LANG_CXX11
inline void ToriiResponse::set_tx_hash(::std::string&& value) {
  
  tx_hash_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:iroha.protocol.ToriiResponse.tx_hash)
}
#endif
inline void ToriiResponse::set_tx_hash(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  tx_hash_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:iroha.protocol.ToriiResponse.tx_hash)
}
inline void ToriiResponse::set_tx_hash(const void* value, size_t size) {
  
  tx_hash_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:iroha.protocol.ToriiResponse.tx_hash)
}
inline ::std::string* ToriiResponse::mutable_tx_hash() {
  
  // @@protoc_insertion_point(field_mutable:iroha.protocol.ToriiResponse.tx_hash)
  return tx_hash_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* ToriiResponse::release_tx_hash() {
  // @@protoc_insertion_point(field_release:iroha.protocol.ToriiResponse.tx_hash)
  
  return tx_hash_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void ToriiResponse::set_allocated_tx_hash(::std::string* tx_hash) {
  if (tx_hash != NULL) {
    
  } else {
    
  }
  tx_hash_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), tx_hash);
  // @@protoc_insertion_point(field_set_allocated:iroha.protocol.ToriiResponse.tx_hash)
}

// string error_message = 3;
inline void ToriiResponse::clear_error_message() {
  error_message_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& ToriiResponse::error_message() const {
  // @@protoc_insertion_point(field_get:iroha.protocol.ToriiResponse.error_message)
  return error_message_.GetNoArena();
}
inline void ToriiResponse::set_error_message(const ::std::string& value) {
  
  error_message_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:iroha.protocol.ToriiResponse.error_message)
}
#if LANG_CXX11
inline void ToriiResponse::set_error_message(::std::string&& value) {
  
  error_message_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:iroha.protocol.ToriiResponse.error_message)
}
#endif
inline void ToriiResponse::set_error_message(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  error_message_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:iroha.protocol.ToriiResponse.error_message)
}
inline void ToriiResponse::set_error_message(const char* value, size_t size) {
  
  error_message_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:iroha.protocol.ToriiResponse.error_message)
}
inline ::std::string* ToriiResponse::mutable_error_message() {
  
  // @@protoc_insertion_point(field_mutable:iroha.protocol.ToriiResponse.error_message)
  return error_message_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* ToriiResponse::release_error_message() {
  // @@protoc_insertion_point(field_release:iroha.protocol.ToriiResponse.error_message)
  
  return error_message_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void ToriiResponse::set_allocated_error_message(::std::string* error_message) {
  if (error_message != NULL) {
    
  } else {
    
  }
  error_message_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), error_message);
  // @@protoc_insertion_point(field_set_allocated:iroha.protocol.ToriiResponse.error_message)
}

// -------------------------------------------------------------------

// TxStatusRequest

// bytes tx_hash = 1;
inline void TxStatusRequest::clear_tx_hash() {
  tx_hash_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& TxStatusRequest::tx_hash() const {
  // @@protoc_insertion_point(field_get:iroha.protocol.TxStatusRequest.tx_hash)
  return tx_hash_.GetNoArena();
}
inline void TxStatusRequest::set_tx_hash(const ::std::string& value) {
  
  tx_hash_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:iroha.protocol.TxStatusRequest.tx_hash)
}
#if LANG_CXX11
inline void TxStatusRequest::set_tx_hash(::std::string&& value) {
  
  tx_hash_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:iroha.protocol.TxStatusRequest.tx_hash)
}
#endif
inline void TxStatusRequest::set_tx_hash(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  tx_hash_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:iroha.protocol.TxStatusRequest.tx_hash)
}
inline void TxStatusRequest::set_tx_hash(const void* value, size_t size) {
  
  tx_hash_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:iroha.protocol.TxStatusRequest.tx_hash)
}
inline ::std::string* TxStatusRequest::mutable_tx_hash() {
  
  // @@protoc_insertion_point(field_mutable:iroha.protocol.TxStatusRequest.tx_hash)
  return tx_hash_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* TxStatusRequest::release_tx_hash() {
  // @@protoc_insertion_point(field_release:iroha.protocol.TxStatusRequest.tx_hash)
  
  return tx_hash_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void TxStatusRequest::set_allocated_tx_hash(::std::string* tx_hash) {
  if (tx_hash != NULL) {
    
  } else {
    
  }
  tx_hash_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), tx_hash);
  // @@protoc_insertion_point(field_set_allocated:iroha.protocol.TxStatusRequest.tx_hash)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__
// -------------------------------------------------------------------


// @@protoc_insertion_point(namespace_scope)

}  // namespace protocol
}  // namespace iroha

namespace google {
namespace protobuf {

template <> struct is_proto_enum< ::iroha::protocol::TxStatus> : ::google::protobuf::internal::true_type {};
template <>
inline const EnumDescriptor* GetEnumDescriptor< ::iroha::protocol::TxStatus>() {
  return ::iroha::protocol::TxStatus_descriptor();
}

}  // namespace protobuf
}  // namespace google

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_endpoint_2eproto__INCLUDED