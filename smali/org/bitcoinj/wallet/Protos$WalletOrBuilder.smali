.class public interface abstract Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;
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
    name = "WalletOrBuilder"
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
.end method

.method public abstract getEncryptionParametersOrBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;
.end method

.method public abstract getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
.end method

.method public abstract getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;
.end method

.method public abstract getExtensionCount()I
.end method

.method public abstract getExtensionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtensionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;
.end method

.method public abstract getExtensionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey(I)Lorg/bitcoinj/wallet/Protos$Key;
.end method

.method public abstract getKeyCount()I
.end method

.method public abstract getKeyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyOrBuilder(I)Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;
.end method

.method public abstract getKeyOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyRotationTime()J
.end method

.method public abstract getLastSeenBlockHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLastSeenBlockHeight()I
.end method

.method public abstract getLastSeenBlockTimeSecs()J
.end method

.method public abstract getNetworkIdentifier()Ljava/lang/String;
.end method

.method public abstract getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;
.end method

.method public abstract getTransactionCount()I
.end method

.method public abstract getTransactionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransactionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;
.end method

.method public abstract getTransactionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;
.end method

.method public abstract getWatchedScriptCount()I
.end method

.method public abstract getWatchedScriptList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWatchedScriptOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;
.end method

.method public abstract getWatchedScriptOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasEncryptionParameters()Z
.end method

.method public abstract hasEncryptionType()Z
.end method

.method public abstract hasKeyRotationTime()Z
.end method

.method public abstract hasLastSeenBlockHash()Z
.end method

.method public abstract hasLastSeenBlockHeight()Z
.end method

.method public abstract hasLastSeenBlockTimeSecs()Z
.end method

.method public abstract hasNetworkIdentifier()Z
.end method

.method public abstract hasVersion()Z
.end method
