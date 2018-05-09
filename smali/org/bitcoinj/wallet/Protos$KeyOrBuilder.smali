.class public interface abstract Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;
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
    name = "KeyOrBuilder"
.end annotation


# virtual methods
.method public abstract getCreationTimestamp()J
.end method

.method public abstract getEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
.end method

.method public abstract getEncryptedPrivateKeyOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getLabelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPublicKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getType()Lorg/bitcoinj/wallet/Protos$Key$Type;
.end method

.method public abstract hasCreationTimestamp()Z
.end method

.method public abstract hasEncryptedPrivateKey()Z
.end method

.method public abstract hasLabel()Z
.end method

.method public abstract hasPrivateKey()Z
.end method

.method public abstract hasPublicKey()Z
.end method

.method public abstract hasType()Z
.end method
