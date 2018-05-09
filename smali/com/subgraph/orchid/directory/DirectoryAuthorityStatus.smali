.class public Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;
.super Ljava/lang/Object;
.source "DirectoryAuthorityStatus.java"

# interfaces
.implements Lcom/subgraph/orchid/RouterStatus;


# instance fields
.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private directoryPort:I

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

.field private identity:Lcom/subgraph/orchid/data/HexDigest;

.field private nickname:Ljava/lang/String;

.field private routerPort:I

.field private v3Ident:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->flags:Ljava/util/Set;

    .line 36
    const-string v0, "Authority"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->addFlag(Ljava/lang/String;)V

    .line 37
    const-string v0, "V2Dir"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->addFlag(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method addFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->directoryPort:I

    return v0
.end method

.method public getEstimatedBandwidth()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getExitPorts()Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getMeasuredBandwidth()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicationTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRouterPort()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->routerPort:I

    return v0
.end method

.method getV3Ident()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasBandwidth()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public hasFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method setBridgeAuthority()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method setDirectoryPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->directoryPort:I

    return-void
.end method

.method setHiddenServiceAuthority()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "HSDir"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->addFlag(Ljava/lang/String;)V

    return-void
.end method

.method setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->nickname:Ljava/lang/String;

    return-void
.end method

.method setRouterPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->routerPort:I

    return-void
.end method

.method setV1Authority()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method setV3Ident(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "v3Ident"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method unsetHiddenServiceAuthority()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->flags:Ljava/util/Set;

    const-string v1, "HSDir"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method unsetV2Authority()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->flags:Ljava/util/Set;

    const-string v1, "V2Dir"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
