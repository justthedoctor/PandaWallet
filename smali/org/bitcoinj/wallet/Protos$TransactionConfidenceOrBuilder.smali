.class public interface abstract Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransactionConfidenceOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppearedAtHeight()I
.end method

.method public abstract getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;
.end method

.method public abstract getBroadcastByCount()I
.end method

.method public abstract getBroadcastByList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBroadcastByOrBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;
.end method

.method public abstract getBroadcastByOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDepth()I
.end method

.method public abstract getOverridingTransaction()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
.end method

.method public abstract getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
.end method

.method public abstract getWorkDone()J
.end method

.method public abstract hasAppearedAtHeight()Z
.end method

.method public abstract hasDepth()Z
.end method

.method public abstract hasOverridingTransaction()Z
.end method

.method public abstract hasSource()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasWorkDone()Z
.end method
