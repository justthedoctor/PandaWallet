.class public Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;
.super Ljava/lang/Object;
.source "RouterStatusImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/RouterStatus;


# instance fields
.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private bandwidthEstimate:I

.field private bandwidthMeasured:I

.field private digest:Lcom/subgraph/orchid/data/HexDigest;

.field private directoryPort:I

.field private exitPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasBandwidth:Z

.field private identity:Lcom/subgraph/orchid/data/HexDigest;

.field private microdescriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private nickname:Ljava/lang/String;

.field private publicationTime:Lcom/subgraph/orchid/data/Timestamp;

.field private routerPort:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->flags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method addFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->digest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->directoryPort:I

    return v0
.end method

.method public getEstimatedBandwidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->bandwidthEstimate:I

    return v0
.end method

.method public getExitPorts()Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->exitPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    return-object v0
.end method

.method public getIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getMeasuredBandwidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->bandwidthMeasured:I

    return v0
.end method

.method public getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->microdescriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->publicationTime:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getRouterPort()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->routerPort:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasBandwidth()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->hasBandwidth:Z

    return v0
.end method

.method public hasFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->directoryPort:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAcceptedPorts(Ljava/lang/String;)V
    .locals 1
    .param p1, "portList"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->createAcceptExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->exitPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    return-void
.end method

.method setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method setDigest(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "digest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->digest:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setDirectoryPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->directoryPort:I

    return-void
.end method

.method setEstimatedBandwidth(I)V
    .locals 1
    .param p1, "bandwidth"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->bandwidthEstimate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->hasBandwidth:Z

    return-void
.end method

.method setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setMeasuredBandwidth(I)V
    .locals 0
    .param p1, "bandwidth"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->bandwidthMeasured:I

    return-void
.end method

.method setMicrodescriptorDigest(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "digest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->microdescriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->nickname:Ljava/lang/String;

    return-void
.end method

.method setPublicationTime(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "timestamp"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->publicationTime:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setRejectedPorts(Ljava/lang/String;)V
    .locals 1
    .param p1, "portList"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->createRejectExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->exitPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    return-void
.end method

.method setRouterPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->routerPort:I

    return-void
.end method

.method setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Router: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->digest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->routerPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->directoryPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->exitPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
