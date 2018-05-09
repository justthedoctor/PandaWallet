.class public Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;
.super Ljava/lang/Object;
.source "VoteAuthorityEntryImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/VoteAuthorityEntry;


# instance fields
.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private contact:Ljava/lang/String;

.field private dirport:I

.field private hostname:Ljava/lang/String;

.field private identity:Lcom/subgraph/orchid/data/HexDigest;

.field private nickname:Ljava/lang/String;

.field private orport:I

.field private final signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/directory/consensus/DirectorySignature;",
            ">;"
        }
    .end annotation
.end field

.field private voteDigest:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->dirport:I

    .line 16
    iput v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->orport:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->signatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->dirport:I

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRouterPort()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->orport:I

    return v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/directory/consensus/DirectorySignature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->signatures:Ljava/util/List;

    return-object v0
.end method

.method public getVoteDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->voteDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method setContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->contact:Ljava/lang/String;

    return-void
.end method

.method setDirectoryPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->dirport:I

    return-void
.end method

.method setHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->hostname:Ljava/lang/String;

    return-void
.end method

.method setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->nickname:Ljava/lang/String;

    return-void
.end method

.method setRouterPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->orport:I

    return-void
.end method

.method setVoteDigest(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "digest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->voteDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method
