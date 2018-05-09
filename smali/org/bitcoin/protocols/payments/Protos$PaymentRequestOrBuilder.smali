.class public interface abstract Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaymentRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getPaymentDetailsVersion()I
.end method

.method public abstract getPkiData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPkiType()Ljava/lang/String;
.end method

.method public abstract getPkiTypeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSignature()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasPaymentDetailsVersion()Z
.end method

.method public abstract hasPkiData()Z
.end method

.method public abstract hasPkiType()Z
.end method

.method public abstract hasSerializedPaymentDetails()Z
.end method

.method public abstract hasSignature()Z
.end method
