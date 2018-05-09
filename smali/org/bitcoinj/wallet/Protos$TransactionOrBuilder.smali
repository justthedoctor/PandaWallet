.class public interface abstract Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;
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
    name = "TransactionOrBuilder"
.end annotation


# virtual methods
.method public abstract getBlockHash(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBlockHashCount()I
.end method

.method public abstract getBlockHashList()Ljava/util/List;
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

.method public abstract getBlockRelativityOffsets(I)I
.end method

.method public abstract getBlockRelativityOffsetsCount()I
.end method

.method public abstract getBlockRelativityOffsetsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
.end method

.method public abstract getConfidenceOrBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;
.end method

.method public abstract getHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLockTime()I
.end method

.method public abstract getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
.end method

.method public abstract getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
.end method

.method public abstract getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;
.end method

.method public abstract getTransactionInputCount()I
.end method

.method public abstract getTransactionInputList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransactionInputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;
.end method

.method public abstract getTransactionInputOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
.end method

.method public abstract getTransactionOutputCount()I
.end method

.method public abstract getTransactionOutputList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransactionOutputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;
.end method

.method public abstract getTransactionOutputOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpdatedAt()J
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasConfidence()Z
.end method

.method public abstract hasHash()Z
.end method

.method public abstract hasLockTime()Z
.end method

.method public abstract hasPool()Z
.end method

.method public abstract hasPurpose()Z
.end method

.method public abstract hasUpdatedAt()Z
.end method

.method public abstract hasVersion()Z
.end method
