.class public Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;
.super Ljava/lang/Object;
.source "KeyCertificateImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/KeyCertificate;


# instance fields
.field private directoryAddress:Lcom/subgraph/orchid/data/IPv4Address;

.field private directoryPort:I

.field private fingerprint:Lcom/subgraph/orchid/data/HexDigest;

.field private hasValidSignature:Z

.field private identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

.field private keyExpires:Lcom/subgraph/orchid/data/Timestamp;

.field private keyPublished:Lcom/subgraph/orchid/data/Timestamp;

.field private rawDocumentData:Ljava/lang/String;

.field private signingKey:Lcom/subgraph/orchid/crypto/TorPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->hasValidSignature:Z

    return-void
.end method


# virtual methods
.method public getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getAuthorityIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->signingKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getDirectoryAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->directoryAddress:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->directoryPort:I

    return v0
.end method

.method public getKeyExpiryTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyExpires:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getKeyPublishedTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyPublished:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getRawDocumentBytes()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawDocumentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->rawDocumentData:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyExpires:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyExpires:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/Timestamp;->hasPassed()Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidDocument()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->hasValidSignature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyPublished:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyExpires:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->signingKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAuthorityFingerprint(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "fingerprint"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setAuthorityIdentityKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "key"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-void
.end method

.method setAuthoritySigningKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "key"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->signingKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-void
.end method

.method setDirectoryAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->directoryAddress:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method setDirectoryPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->directoryPort:I

    return-void
.end method

.method setKeyExpiryTime(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "time"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyExpires:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setKeyPublishedTime(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "time"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyPublished:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setRawDocumentData(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawData"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->rawDocumentData:Ljava/lang/String;

    return-void
.end method

.method setValidSignature()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->hasValidSignature:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Certificate: address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->directoryAddress:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->directoryPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " published="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyPublished:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->keyExpires:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nident="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateImpl;->signingKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
