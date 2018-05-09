.class public Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;
.super Ljava/lang/Object;
.source "RouterMicrodescriptorImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/RouterMicrodescriptor;


# instance fields
.field private acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

.field private descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

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

.field private lastListed:J

.field private ntorOnionKey:[B

.field private onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

.field private rawDocumentData:Ljava/lang/String;

.field private rejectPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

.field private routerPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    .line 27
    sget-object v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;->NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-void
.end method


# virtual methods
.method public addAcceptPorts(Ljava/lang/String;)V
    .locals 1
    .param p1, "portlist"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->createAcceptExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    .line 54
    return-void
.end method

.method public addFamilyMember(Ljava/lang/String;)V
    .locals 1
    .param p1, "familyMember"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public addRejectPorts(Ljava/lang/String;)V
    .locals 1
    .param p1, "portlist"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->createRejectExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rejectPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    .line 58
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 119
    instance-of v2, p1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 121
    check-cast v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    .line 122
    .local v0, "other":Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public exitPolicyAccepts(I)Z
    .locals 2
    .param p1, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rejectPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rejectPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->acceptsPort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->acceptsPort(I)Z

    move-result v0

    goto :goto_0
.end method

.method public exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 1
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p2}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->exitPolicyAccepts(I)Z

    move-result v0

    return v0
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getBodyLength()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rawDocumentData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getCacheLocation()Lcom/subgraph/orchid/Descriptor$CacheLocation;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

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
    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    return-object v0
.end method

.method public getLastListed()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->lastListed:J

    return-wide v0
.end method

.method public getNTorOnionKey()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->ntorOnionKey:[B

    return-object v0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getRawDocumentBytes()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getRawDocumentData()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rawDocumentData:Ljava/lang/String;

    return-object v0
.end method

.method public getRouterPort()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->routerPort:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isValidDocument()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    .line 31
    return-void
.end method

.method public setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V
    .locals 0
    .param p1, "location"    # Lcom/subgraph/orchid/Descriptor$CacheLocation;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    .line 140
    return-void
.end method

.method public setDescriptorDigest(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "descriptorDigest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    .line 66
    return-void
.end method

.method public setLastListed(J)V
    .locals 0
    .param p1, "ts"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->lastListed:J

    .line 70
    return-void
.end method

.method public setNtorOnionKey([B)V
    .locals 0
    .param p1, "ntorOnionKey"    # [B

    .prologue
    .line 42
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->ntorOnionKey:[B

    .line 43
    return-void
.end method

.method public setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "onionKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 39
    return-void
.end method

.method public setRawDocumentData(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawData"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rawDocumentData:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setRouterPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->routerPort:I

    .line 35
    return-void
.end method
