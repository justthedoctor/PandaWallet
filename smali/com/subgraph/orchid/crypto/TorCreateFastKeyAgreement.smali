.class public Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;
.super Ljava/lang/Object;
.source "TorCreateFastKeyAgreement.java"

# interfaces
.implements Lcom/subgraph/orchid/crypto/TorKeyAgreement;


# instance fields
.field private final xValue:[B

.field private yValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    .line 13
    .local v0, "random":Lcom/subgraph/orchid/crypto/TorRandom;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->getBytes(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->xValue:[B

    .line 14
    return-void
.end method


# virtual methods
.method public createOnionSkin()[B
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->getPublicValue()[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeysFromHandshakeResponse([B[B[B)Z
    .locals 6
    .param p1, "handshakeResponse"    # [B
    .param p2, "keyMaterialOut"    # [B
    .param p3, "verifyHashOut"    # [B

    .prologue
    const/16 v5, 0x14

    .line 43
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-array v3, v5, [B

    .line 45
    .local v3, "peerValue":[B
    new-array v2, v5, [B

    .line 46
    .local v2, "keyHash":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p0, v3}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->setOtherValue([B)V

    .line 49
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->getDerivedValue()[B

    move-result-object v4

    .line 50
    .local v4, "seed":[B
    new-instance v1, Lcom/subgraph/orchid/crypto/TorKeyDerivation;

    invoke-direct {v1, v4}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;-><init>([B)V

    .line 51
    .local v1, "kdf":Lcom/subgraph/orchid/crypto/TorKeyDerivation;
    invoke-virtual {v1, p2, p3}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->deriveKeys([B[B)V

    .line 52
    invoke-static {p3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    return v5
.end method

.method public getDerivedValue()[B
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 28
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->yValue:[B

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must call setOtherValue() first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    const/16 v1, 0x28

    new-array v0, v1, [B

    .line 32
    .local v0, "result":[B
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->xValue:[B

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->yValue:[B

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-object v0
.end method

.method public getPublicValue()[B
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->xValue:[B

    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->xValue:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public setOtherValue([B)V
    .locals 2
    .param p1, "yValue"    # [B

    .prologue
    .line 21
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 24
    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->yValue:[B

    .line 25
    return-void
.end method
