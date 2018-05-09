.class public interface abstract Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;
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
    name = "TransactionOutputOrBuilder"
.end annotation


# virtual methods
.method public abstract getScriptBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSpentByTransactionHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSpentByTransactionIndex()I
.end method

.method public abstract getValue()J
.end method

.method public abstract hasScriptBytes()Z
.end method

.method public abstract hasSpentByTransactionHash()Z
.end method

.method public abstract hasSpentByTransactionIndex()Z
.end method

.method public abstract hasValue()Z
.end method
