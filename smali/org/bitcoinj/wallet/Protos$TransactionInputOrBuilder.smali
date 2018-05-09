.class public interface abstract Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;
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
    name = "TransactionInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getScriptBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSequence()I
.end method

.method public abstract getTransactionOutPointHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransactionOutPointIndex()I
.end method

.method public abstract hasScriptBytes()Z
.end method

.method public abstract hasSequence()Z
.end method

.method public abstract hasTransactionOutPointHash()Z
.end method

.method public abstract hasTransactionOutPointIndex()Z
.end method
