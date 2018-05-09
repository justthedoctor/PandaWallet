.class public Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;
.super Ljava/lang/Object;
.source "BridgeRouterImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/BridgeRouter;


# instance fields
.field private final address:Lcom/subgraph/orchid/data/IPv4Address;

.field private volatile cachedCountryCode:Ljava/lang/String;

.field private descriptor:Lcom/subgraph/orchid/Descriptor;

.field private identity:Lcom/subgraph/orchid/data/HexDigest;

.field private final port:I


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/IPv4Address;I)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    .line 25
    iput p2, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 62
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    .line 65
    .local v0, "other":Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-nez v3, :cond_4

    .line 66
    iget-object v3, v0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-eqz v3, :cond_5

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    iget-object v4, v0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/data/IPv4Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_5
    iget v3, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    iget v4, v0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public exitPolicyAccepts(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 1
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getAverageBandwidth()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getBurstBandwidth()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->cachedCountryCode:Ljava/lang/String;

    .line 84
    .local v0, "cc":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getInstance()Lcom/subgraph/orchid/geoip/CountryCodeService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getCountryCodeForAddress(Lcom/subgraph/orchid/data/IPv4Address;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->cachedCountryCode:Ljava/lang/String;

    .line 88
    :cond_0
    return-object v0
.end method

.method public getCurrentDescriptor()Lcom/subgraph/orchid/Descriptor;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getEstimatedBandwidth()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getFamilyMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getFamilyMembers()Ljava/util/Set;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasuredBandwidth()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNTorOnionKey()[B
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getNTorOnionKey()[B

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObservedBandwidth()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnionPort()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, ""

    return-object v0
.end method

.method public hasBandwidth()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 46
    const/16 v0, 0x1f

    .line 47
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 48
    .local v1, "result":I
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 49
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    add-int v1, v2, v3

    .line 50
    return v1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v2}, Lcom/subgraph/orchid/data/IPv4Address;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBadExit()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public isDescriptorDownloadable()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isExit()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isFast()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public isHSDirectory()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isHibernating()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    instance-of v0, v0, Lcom/subgraph/orchid/RouterDescriptor;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    check-cast v0, Lcom/subgraph/orchid/RouterDescriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->isHibernating()Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPossibleGuard()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public isStable()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public setDescriptor(Lcom/subgraph/orchid/RouterDescriptor;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/subgraph/orchid/RouterDescriptor;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    .line 42
    return-void
.end method

.method public setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bridge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
