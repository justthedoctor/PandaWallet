.class public Lcom/subgraph/orchid/circuits/hs/HiddenService;
.super Ljava/lang/Object;
.source "HiddenService.java"


# instance fields
.field private circuit:Lcom/subgraph/orchid/HiddenServiceCircuit;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

.field private final permanentId:[B


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;[B)V
    .locals 0
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "permanentId"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->config:Lcom/subgraph/orchid/TorConfig;

    .line 34
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    .line 35
    return-void
.end method

.method static calculateTimePeriod(JI)[B
    .locals 8
    .param p0, "currentTime"    # J
    .param p2, "idByte"    # I

    .prologue
    const-wide/32 v6, 0x15180

    .line 105
    int-to-long v2, p2

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x100

    div-long/2addr v2, v4

    add-long/2addr v2, p0

    div-long v0, v2, v6

    .line 106
    .local v0, "t":J
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->toNetworkBytes(J)[B

    move-result-object v2

    return-object v2
.end method

.method static decodeOnion(Ljava/lang/String;)[B
    .locals 2
    .param p0, "onionAddress"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v1, ".onion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 24
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method static toNetworkBytes(J)[B
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 110
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 111
    .local v1, "result":[B
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 112
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 113
    const/16 v2, 0x8

    shr-long/2addr p0, v2

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 133
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 134
    check-cast v0, Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 135
    .local v0, "other":Lcom/subgraph/orchid/circuits/hs/HiddenService;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    iget-object v4, v0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 136
    goto :goto_0
.end method

.method getAllCurrentDescriptorIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/HexDigest;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentDescriptorId(I)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentDescriptorId(I)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/TorConfig;->getHidServAuth(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v0

    return-object v0
.end method

.method getCircuit()Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->circuit:Lcom/subgraph/orchid/HiddenServiceCircuit;

    return-object v0
.end method

.method getCurrentDescriptorId(I)Lcom/subgraph/orchid/data/HexDigest;
    .locals 2
    .param p1, "replica"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 82
    .local v0, "digest":Lcom/subgraph/orchid/crypto/TorMessageDigest;
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentSecretId(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 84
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    return-object v1
.end method

.method getCurrentSecretId(I)[B
    .locals 5
    .param p1, "replica"    # I

    .prologue
    .line 88
    new-instance v1, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 89
    .local v1, "digest":Lcom/subgraph/orchid/crypto/TorMessageDigest;
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentTimePeriod()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 90
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v0

    .line 91
    .local v0, "cookie":Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    move-result-object v2

    sget-object v3, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    if-ne v2, v3, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 94
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 95
    invoke-virtual {v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v2

    return-object v2
.end method

.method getCurrentTimePeriod()[B
    .locals 7

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 100
    .local v1, "now":J
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 101
    .local v0, "idByte":I
    invoke-static {v1, v2, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->calculateTimePeriod(JI)[B

    move-result-object v3

    return-object v3
.end method

.method getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-object v0
.end method

.method getOnionAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-static {v1}, Lcom/subgraph/orchid/data/Base32;->base32Encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOnionAddressForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "[scrubbed]"

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method hasCurrentDescriptor()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    const/16 v0, 0x1f

    .line 121
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 122
    .local v1, "result":I
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 123
    return v1
.end method

.method setCircuit(Lcom/subgraph/orchid/HiddenServiceCircuit;)V
    .locals 0
    .param p1, "circuit"    # Lcom/subgraph/orchid/HiddenServiceCircuit;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->circuit:Lcom/subgraph/orchid/HiddenServiceCircuit;

    .line 67
    return-void
.end method

.method setDescriptor(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .line 59
    return-void
.end method
