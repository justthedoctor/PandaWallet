.class abstract Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.super Ljava/lang/Object;
.source "AbstractTlsContext.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsContext;


# instance fields
.field private clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private secureRandom:Ljava/security/SecureRandom;

.field private securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field private serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private session:Lorg/spongycastle/crypto/tls/TlsSession;

.field private userObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V
    .locals 1
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .param p2, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 12
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 13
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->session:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 14
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->userObject:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->secureRandom:Ljava/security/SecureRandom;

    .line 19
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 20
    return-void
.end method


# virtual methods
.method public exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .locals 9
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "context_value"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v8, 0x0

    .line 74
    if-eqz p2, :cond_0

    array-length v6, p2

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint16(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "\'context_value\' must have length less than 2^16 (or be null)"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v4

    .line 80
    .local v4, "sp":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    .local v0, "cr":[B
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v5

    .line 82
    .local v5, "sr":[B
    array-length v6, v0

    array-length v7, v5

    add-int v2, v6, v7

    .line 83
    .local v2, "seedLength":I
    if-eqz p2, :cond_1

    .line 85
    array-length v6, p2

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    .line 88
    :cond_1
    new-array v1, v2, [B

    .line 89
    .local v1, "seed":[B
    const/4 v3, 0x0

    .line 91
    .local v3, "seedPos":I
    array-length v6, v0

    invoke-static {v0, v8, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v6, v0

    add-int/2addr v3, v6

    .line 93
    array-length v6, v5

    invoke-static {v5, v8, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    array-length v6, v5

    add-int/2addr v3, v6

    .line 95
    if-eqz p2, :cond_2

    .line 97
    array-length v6, p2

    invoke-static {v6, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 98
    add-int/lit8 v3, v3, 0x2

    .line 99
    array-length v6, p2

    invoke-static {p2, v8, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v6, p2

    add-int/2addr v3, v6

    .line 103
    :cond_2
    if-eq v3, v2, :cond_3

    .line 105
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "error in calculation of seed for export"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_3
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v6

    invoke-static {p0, v6, p1, v1, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v6

    return-object v6
.end method

.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getResumableSession()Lorg/spongycastle/crypto/tls/TlsSession;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->session:Lorg/spongycastle/crypto/tls/TlsSession;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    return-object v0
.end method

.method public getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "clientVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 40
    return-void
.end method

.method setResumableSession(Lorg/spongycastle/crypto/tls/TlsSession;)V
    .locals 0
    .param p1, "session"    # Lorg/spongycastle/crypto/tls/TlsSession;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->session:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 60
    return-void
.end method

.method setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "serverVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 50
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userObject"    # Ljava/lang/Object;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->userObject:Ljava/lang/Object;

    .line 70
    return-void
.end method
