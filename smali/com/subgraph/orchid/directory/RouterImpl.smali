.class public Lcom/subgraph/orchid/directory/RouterImpl;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Router;


# instance fields
.field private volatile cachedCountryCode:Ljava/lang/String;

.field private descriptor:Lcom/subgraph/orchid/Descriptor;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final identityHash:Lcom/subgraph/orchid/data/HexDigest;

.field protected status:Lcom/subgraph/orchid/RouterStatus;


# direct methods
.method protected constructor <init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)V
    .locals 1
    .param p1, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p2, "status"    # Lcom/subgraph/orchid/RouterStatus;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;

    .line 31
    invoke-interface {p2}, Lcom/subgraph/orchid/RouterStatus;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->identityHash:Lcom/subgraph/orchid/data/HexDigest;

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    .line 33
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 34
    return-void
.end method

.method static createFromRouterStatus(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)Lcom/subgraph/orchid/directory/RouterImpl;
    .locals 1
    .param p0, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p1, "status"    # Lcom/subgraph/orchid/RouterStatus;

    .prologue
    .line 19
    new-instance v0, Lcom/subgraph/orchid/directory/RouterImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)V

    return-object v0
.end method

.method private downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 254
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    instance-of v0, v0, Lcom/subgraph/orchid/RouterDescriptor;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    check-cast v0, Lcom/subgraph/orchid/RouterDescriptor;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized refreshDescriptor()V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v1}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Directory;->getMicrodescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterMicrodescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v1}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Directory;->getBasicDescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public exitPolicyAccepts(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v0

    return v0
.end method

.method public exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 1
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 226
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    .line 228
    :cond_0
    if-nez p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0, p2}, Lcom/subgraph/orchid/Descriptor;->exitPolicyAccepts(I)Z

    move-result v0

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0, p1, p2}, Lcom/subgraph/orchid/Descriptor;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getAverageBandwidth()I
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    .line 199
    .local v0, "rd":Lcom/subgraph/orchid/RouterDescriptor;
    if-nez v0, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 202
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getAverageBandwidth()I

    move-result v1

    goto :goto_0
.end method

.method public getBurstBandwidth()I
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    .line 208
    .local v0, "rd":Lcom/subgraph/orchid/RouterDescriptor;
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getBurstBandwidth()I

    move-result v1

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->cachedCountryCode:Ljava/lang/String;

    .line 245
    .local v0, "cc":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getInstance()Lcom/subgraph/orchid/geoip/CountryCodeService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getCountryCodeForAddress(Lcom/subgraph/orchid/data/IPv4Address;)Ljava/lang/String;

    move-result-object v0

    .line 247
    iput-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->cachedCountryCode:Ljava/lang/String;

    .line 249
    :cond_0
    return-object v0
.end method

.method public getCurrentDescriptor()Lcom/subgraph/orchid/Descriptor;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getDirectoryPort()I

    move-result v0

    return v0
.end method

.method public getEstimatedBandwidth()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getEstimatedBandwidth()I

    move-result v0

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
    .line 189
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 190
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getFamilyMembers()Ljava/util/Set;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->identityHash:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    .line 143
    .local v0, "rd":Lcom/subgraph/orchid/RouterDescriptor;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMeasuredBandwidth()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getMeasuredBandwidth()I

    move-result v0

    return v0
.end method

.method public getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public getNTorOnionKey()[B
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 169
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getNTorOnionKey()[B

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObservedBandwidth()I
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    .line 217
    .local v0, "rd":Lcom/subgraph/orchid/RouterDescriptor;
    if-nez v0, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 220
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getObservedBandwidth()I

    move-result v1

    goto :goto_0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 160
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnionPort()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getRouterPort()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBandwidth()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->hasBandwidth()Z

    move-result v0

    return v0
.end method

.method public hasFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/RouterStatus;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBadExit()Z
    .locals 1

    .prologue
    .line 110
    const-string v0, "BadExit"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDescriptorDownloadable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 47
    iget-object v5, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v5, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v4

    .line 51
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    .local v2, "now":J
    iget-object v5, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v5}, Lcom/subgraph/orchid/RouterStatus;->getPublicationTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v0, v2, v5

    .line 53
    .local v0, "diff":J
    const-wide/32 v5, 0x927c0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isExit()Z
    .locals 1

    .prologue
    .line 118
    const-string v0, "Exit"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFast()Z
    .locals 1

    .prologue
    .line 122
    const-string v0, "Fast"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHSDirectory()Z
    .locals 1

    .prologue
    .line 130
    const-string v0, "HSDir"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHibernating()Z
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    .line 94
    .local v0, "rd":Lcom/subgraph/orchid/RouterDescriptor;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    .line 97
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->isHibernating()Z

    move-result v1

    goto :goto_0
.end method

.method public isPossibleGuard()Z
    .locals 1

    .prologue
    .line 114
    const-string v0, "Guard"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 102
    const-string v0, "Running"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStable()Z
    .locals 1

    .prologue
    .line 126
    const-string v0, "Stable"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 106
    const-string v0, "Valid"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Router["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getOnionPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStatus(Lcom/subgraph/orchid/RouterStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/subgraph/orchid/RouterStatus;

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->identityHash:Lcom/subgraph/orchid/data/HexDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v1, "Identity hash does not match status update"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    .line 40
    iput-object v2, p0, Lcom/subgraph/orchid/directory/RouterImpl;->cachedCountryCode:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    .line 42
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 43
    return-void
.end method
