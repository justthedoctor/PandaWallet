.class public interface abstract Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;
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
    name = "PaymentACKOrBuilder"
.end annotation


# virtual methods
.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;
.end method

.method public abstract getPaymentOrBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;
.end method

.method public abstract hasMemo()Z
.end method

.method public abstract hasPayment()Z
.end method
