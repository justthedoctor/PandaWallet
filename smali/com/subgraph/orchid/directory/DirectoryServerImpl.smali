.class public Lcom/subgraph/orchid/directory/DirectoryServerImpl;
.super Lcom/subgraph/orchid/directory/RouterImpl;
.source "DirectoryServerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryServer;


# instance fields
.field private certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private isBridgeAuthority:Z

.field private isExtraInfoCache:Z

.field private isHiddenServiceAuthority:Z

.field private port:I

.field private v3Ident:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/RouterStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/subgraph/orchid/RouterStatus;

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    .line 16
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    .line 17
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isBridgeAuthority:Z

    .line 18
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isExtraInfoCache:Z

    .line 24
    return-void
.end method

.method private getNewestCertificate()Lcom/subgraph/orchid/KeyCertificate;
    .locals 7

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "newest":Lcom/subgraph/orchid/KeyCertificate;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/KeyCertificate;

    .line 114
    .local v1, "kc":Lcom/subgraph/orchid/KeyCertificate;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide v3

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 115
    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 118
    .end local v1    # "kc":Lcom/subgraph/orchid/KeyCertificate;
    :cond_2
    return-object v2
.end method

.method private getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J
    .locals 2
    .param p1, "certificate"    # Lcom/subgraph/orchid/KeyCertificate;

    .prologue
    .line 127
    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getKeyPublishedTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private isMoreThan48HoursOlder(Lcom/subgraph/orchid/KeyCertificate;Lcom/subgraph/orchid/KeyCertificate;)Z
    .locals 6
    .param p1, "newer"    # Lcom/subgraph/orchid/KeyCertificate;
    .param p2, "older"    # Lcom/subgraph/orchid/KeyCertificate;

    .prologue
    .line 122
    const-wide/32 v0, 0xa4cb800

    .line 123
    .local v0, "milliseconds":J
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide v2

    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb800

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private purgeExpiredCertificates()V
    .locals 3

    .prologue
    .line 88
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/subgraph/orchid/KeyCertificate;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/KeyCertificate;

    .line 91
    .local v0, "elem":Lcom/subgraph/orchid/KeyCertificate;
    invoke-interface {v0}, Lcom/subgraph/orchid/KeyCertificate;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 95
    .end local v0    # "elem":Lcom/subgraph/orchid/KeyCertificate;
    :cond_1
    return-void
.end method

.method private purgeOldCertificates()V
    .locals 5

    .prologue
    .line 98
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 109
    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getNewestCertificate()Lcom/subgraph/orchid/KeyCertificate;

    move-result-object v2

    .line 102
    .local v2, "newest":Lcom/subgraph/orchid/KeyCertificate;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/subgraph/orchid/KeyCertificate;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/KeyCertificate;

    .line 105
    .local v0, "elem":Lcom/subgraph/orchid/KeyCertificate;
    if-eq v0, v2, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isMoreThan48HoursOlder(Lcom/subgraph/orchid/KeyCertificate;Lcom/subgraph/orchid/KeyCertificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V
    .locals 2
    .param p1, "certificate"    # Lcom/subgraph/orchid/KeyCertificate;

    .prologue
    .line 131
    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This certificate does not appear to belong to this directory authority"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCertificateByFingerprint(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/KeyCertificate;
    .locals 3
    .param p1, "fingerprint"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/KeyCertificate;

    .line 72
    .local v1, "kc":Lcom/subgraph/orchid/KeyCertificate;
    invoke-interface {v1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    .end local v1    # "kc":Lcom/subgraph/orchid/KeyCertificate;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->purgeExpiredCertificates()V

    .line 82
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->purgeOldCertificates()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getV3Identity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public isBridgeAuthority()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isBridgeAuthority:Z

    return v0
.end method

.method public isExtraInfoCache()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isExtraInfoCache:Z

    return v0
.end method

.method public isHiddenServiceAuthority()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    return v0
.end method

.method public isTrustedAuthority()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public isV2Authority()Z
    .locals 1

    .prologue
    .line 47
    const-string v0, "Authority"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "V2Dir"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isV3Authority()Z
    .locals 1

    .prologue
    .line 51
    const-string v0, "Authority"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method setBridgeAuthority()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isBridgeAuthority:Z

    return-void
.end method

.method setExtraInfoCache()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isExtraInfoCache:Z

    return-void
.end method

.method setHiddenServiceAuthority()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    return-void
.end method

.method setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->port:I

    return-void
.end method

.method setV3Ident(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "fingerprint"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " v3ident="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method unsetHiddenServiceAuthority()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    return-void
.end method
