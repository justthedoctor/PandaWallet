.class public interface abstract Lcom/subgraph/orchid/KeyCertificate;
.super Ljava/lang/Object;
.source "KeyCertificate.java"

# interfaces
.implements Lcom/subgraph/orchid/Document;


# virtual methods
.method public abstract getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getAuthorityIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
.end method

.method public abstract getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
.end method

.method public abstract getDirectoryAddress()Lcom/subgraph/orchid/data/IPv4Address;
.end method

.method public abstract getDirectoryPort()I
.end method

.method public abstract getKeyExpiryTime()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract getKeyPublishedTime()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract isExpired()Z
.end method
