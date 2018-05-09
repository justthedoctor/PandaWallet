.class public interface abstract Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;
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
    name = "PaymentDetailsOrBuilder"
.end annotation


# virtual methods
.method public abstract getExpires()J
.end method

.method public abstract getMemo()Ljava/lang/String;
.end method

.method public abstract getMemoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMerchantData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNetwork()Ljava/lang/String;
.end method

.method public abstract getNetworkBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;
.end method

.method public abstract getOutputsCount()I
.end method

.method public abstract getOutputsList()Ljava/util/List;
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

.method public abstract getOutputsOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
.end method

.method public abstract getOutputsOrBuilderList()Ljava/util/List;
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

.method public abstract getPaymentUrl()Ljava/lang/String;
.end method

.method public abstract getPaymentUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTime()J
.end method

.method public abstract hasExpires()Z
.end method

.method public abstract hasMemo()Z
.end method

.method public abstract hasMerchantData()Z
.end method

.method public abstract hasNetwork()Z
.end method

.method public abstract hasPaymentUrl()Z
.end method

.method public abstract hasTime()Z
.end method
