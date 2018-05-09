.class public interface abstract Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;
.super Ljava/lang/Object;
.source "ServerState.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ServerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StoredServerPaymentChannelOrBuilder"
.end annotation


# virtual methods
.method public abstract getBestValueSignature()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBestValueToMe()J
.end method

.method public abstract getClientOutput()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getContractTransaction()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMyKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRefundTransactionUnlockTimeSecs()J
.end method

.method public abstract hasBestValueSignature()Z
.end method

.method public abstract hasBestValueToMe()Z
.end method

.method public abstract hasClientOutput()Z
.end method

.method public abstract hasContractTransaction()Z
.end method

.method public abstract hasMyKey()Z
.end method

.method public abstract hasRefundTransactionUnlockTimeSecs()Z
.end method
