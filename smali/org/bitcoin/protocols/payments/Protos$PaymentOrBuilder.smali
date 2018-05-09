.class public interface abstract Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;
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
    name = "PaymentOrBuilder"
.end annotation


# virtual methods
.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMerchantData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;
.end method

.method public abstract getRefundToCount()I
.end method

.method public abstract getRefundToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefundToOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
.end method

.method public abstract getRefundToOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransactions(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransactionsCount()I
.end method

.method public abstract getTransactionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMemo()Z
.end method

.method public abstract hasMerchantData()Z
.end method
