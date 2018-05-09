.class public Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;
.super Ljava/lang/Object;
.source "RouterDescriptorImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/RouterDescriptor;


# instance fields
.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private allowSingleHopExits:Z

.field private averageBandwidth:I

.field private burstBandwidth:I

.field private cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

.field private cachesExtraInfo:Z

.field private circuitProtocols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contact:Ljava/lang/String;

.field private descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private directoryPort:I

.field private eventDNS:Z

.field private exitPolicy:Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

.field private extraInfoDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private familyMembers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprint:Lcom/subgraph/orchid/data/HexDigest;

.field private hasValidSignature:Z

.field private hibernating:Z

.field private hiddenServiceDir:Z

.field private identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

.field private lastListed:J

.field private linkProtocols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nickname:Ljava/lang/String;

.field private ntorOnionKey:[B

.field private observedBandwidth:I

.field private onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

.field private platform:Ljava/lang/String;

.field private published:Lcom/subgraph/orchid/data/Timestamp;

.field private rawDocumentData:Ljava/lang/String;

.field private readHistory:Lcom/subgraph/orchid/data/BandwidthHistory;

.field private routerPort:I

.field private uptime:I

.field private writeHistory:Lcom/subgraph/orchid/data/BandwidthHistory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->averageBandwidth:I

    .line 24
    iput v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->burstBandwidth:I

    .line 25
    iput v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->observedBandwidth:I

    .line 40
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

    invoke-direct {v0}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->exitPolicy:Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->familyMembers:Ljava/util/Set;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->linkProtocols:Ljava/util/Set;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->circuitProtocols:Ljava/util/Set;

    .line 50
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->eventDNS:Z

    .line 51
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->cachesExtraInfo:Z

    .line 52
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hiddenServiceDir:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->extraInfoDigest:Lcom/subgraph/orchid/data/HexDigest;

    .line 54
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->allowSingleHopExits:Z

    .line 55
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hasValidSignature:Z

    .line 61
    sget-object v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;->NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-void
.end method


# virtual methods
.method addAcceptRule(Ljava/lang/String;)V
    .locals 1
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->exitPolicy:Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->addAcceptRule(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method addCircuitProtocolVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->circuitProtocols:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->circuitProtocols:Ljava/util/Set;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->circuitProtocols:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method addFamilyMember(Ljava/lang/String;)V
    .locals 1
    .param p1, "familyMember"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->familyMembers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->familyMembers:Ljava/util/Set;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->familyMembers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method addLinkProtocolVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->linkProtocols:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->linkProtocols:Ljava/util/Set;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->linkProtocols:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method addRejectRule(Ljava/lang/String;)V
    .locals 1
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->exitPolicy:Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->addRejectRule(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public allowsSingleHopExits()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->allowSingleHopExits:Z

    return v0
.end method

.method public cachesExtraInfo()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->cachesExtraInfo:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 281
    instance-of v2, p1, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    if-nez v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 283
    check-cast v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    .line 284
    .local v0, "other":Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public exitPolicyAccepts(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->exitPolicy:Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsPort(I)Z

    move-result v0

    return v0
.end method

.method public exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 1
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->exitPolicy:Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v0

    return v0
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getAverageBandwidth()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->averageBandwidth:I

    return v0
.end method

.method public getBodyLength()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->rawDocumentData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getBurstBandwidth()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->burstBandwidth:I

    return v0
.end method

.method public getCacheLocation()Lcom/subgraph/orchid/Descriptor$CacheLocation;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->directoryPort:I

    return v0
.end method

.method public getExitPolicy()Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->exitPolicy:Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;

    return-object v0
.end method

.method public getExtraInfoDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->extraInfoDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
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
    .line 245
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->familyMembers:Ljava/util/Set;

    return-object v0
.end method

.method public getFingerprint()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getLastListed()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->lastListed:J

    return-wide v0
.end method

.method public getNTorOnionKey()[B
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->ntorOnionKey:[B

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getObservedBandwidth()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->observedBandwidth:I

    return v0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->published:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getRawDocumentBytes()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->getRawDocumentData()Ljava/lang/String;

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
    .line 269
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->rawDocumentData:Ljava/lang/String;

    return-object v0
.end method

.method public getReadHistory()Lcom/subgraph/orchid/data/BandwidthHistory;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->readHistory:Lcom/subgraph/orchid/data/BandwidthHistory;

    return-object v0
.end method

.method public getRouterPort()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->routerPort:I

    return v0
.end method

.method public getUptime()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->uptime:I

    return v0
.end method

.method public getWriteHistory()Lcom/subgraph/orchid/data/BandwidthHistory;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->writeHistory:Lcom/subgraph/orchid/data/BandwidthHistory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isHibernating()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hibernating:Z

    return v0
.end method

.method public isHiddenServiceDirectory()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hiddenServiceDir:Z

    return v0
.end method

.method public isNewerThan(Lcom/subgraph/orchid/RouterDescriptor;)Z
    .locals 2
    .param p1, "other"    # Lcom/subgraph/orchid/RouterDescriptor;

    .prologue
    .line 261
    invoke-interface {p1}, Lcom/subgraph/orchid/RouterDescriptor;->getPublishedTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->published:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/data/Timestamp;->isBefore(Lcom/subgraph/orchid/data/Timestamp;)Z

    move-result v0

    return v0
.end method

.method public isValidDocument()Z
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hasValidSignature:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->averageBandwidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->routerPort:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->directoryPort:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->published:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nickname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->routerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directory port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->directoryPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->platform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bandwidth(avg/burst/observed): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->averageBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->burstBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->observedBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publication time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->published:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Uptime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->uptime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->contact:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->contact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    :cond_1
    return-void
.end method

.method public setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method setAllowSingleHopExits()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->allowSingleHopExits:Z

    return-void
.end method

.method setBandwidthValues(III)V
    .locals 0
    .param p1, "average"    # I
    .param p2, "burst"    # I
    .param p3, "observed"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->averageBandwidth:I

    .line 97
    iput p2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->burstBandwidth:I

    .line 98
    iput p3, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->observedBandwidth:I

    .line 99
    return-void
.end method

.method public setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V
    .locals 0
    .param p1, "location"    # Lcom/subgraph/orchid/Descriptor$CacheLocation;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    .line 309
    return-void
.end method

.method setCachesExtraInfo()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->cachesExtraInfo:Z

    return-void
.end method

.method setContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->contact:Ljava/lang/String;

    return-void
.end method

.method setDescriptorHash(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "digest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setDirectoryPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->directoryPort:I

    return-void
.end method

.method setEventDNS()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->eventDNS:Z

    return-void
.end method

.method setExtraInfoDigest(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "digest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->extraInfoDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setFingerprint(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "fingerprint"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setHibernating(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hibernating:Z

    return-void
.end method

.method setHiddenServiceDir()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hiddenServiceDir:Z

    return-void
.end method

.method setIdentityKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "key"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->identityKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-void
.end method

.method public setLastListed(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->lastListed:J

    .line 302
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->nickname:Ljava/lang/String;

    return-void
.end method

.method setNtorOnionKey([B)V
    .locals 0
    .param p1, "key"    # [B

    .prologue
    .line 73
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->ntorOnionKey:[B

    return-void
.end method

.method public setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "key"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-void
.end method

.method setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->platform:Ljava/lang/String;

    return-void
.end method

.method setPublished(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "published"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->published:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setRawDocumentData(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawData"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->rawDocumentData:Ljava/lang/String;

    return-void
.end method

.method setReadHistory(Lcom/subgraph/orchid/data/BandwidthHistory;)V
    .locals 0
    .param p1, "history"    # Lcom/subgraph/orchid/data/BandwidthHistory;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->readHistory:Lcom/subgraph/orchid/data/BandwidthHistory;

    return-void
.end method

.method public setRouterPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->routerPort:I

    return-void
.end method

.method setUptime(I)V
    .locals 0
    .param p1, "uptime"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->uptime:I

    return-void
.end method

.method setValidSignature()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->hasValidSignature:Z

    return-void
.end method

.method setWriteHistory(Lcom/subgraph/orchid/data/BandwidthHistory;)V
    .locals 0
    .param p1, "history"    # Lcom/subgraph/orchid/data/BandwidthHistory;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->writeHistory:Lcom/subgraph/orchid/data/BandwidthHistory;

    return-void
.end method

.method public supportsEventDNS()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->eventDNS:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Router Descriptor: (name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, " orport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->routerPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, " dirport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->directoryPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, " platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, " published="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->published:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
