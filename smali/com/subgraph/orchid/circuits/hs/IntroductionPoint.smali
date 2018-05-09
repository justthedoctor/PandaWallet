.class public Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;
.super Ljava/lang/Object;
.source "IntroductionPoint.java"


# instance fields
.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private identity:Lcom/subgraph/orchid/data/HexDigest;

.field private onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

.field private onionPort:I

.field private serviceKey:Lcom/subgraph/orchid/crypto/TorPublicKey;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->identity:Lcom/subgraph/orchid/data/HexDigest;

    .line 17
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->onionPort:I

    return v0
.end method

.method public getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->serviceKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method isValidDocument()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->identity:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->onionPort:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->serviceKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->address:Lcom/subgraph/orchid/data/IPv4Address;

    .line 21
    return-void
.end method

.method setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "onionKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 29
    return-void
.end method

.method setOnionPort(I)V
    .locals 0
    .param p1, "onionPort"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->onionPort:I

    .line 25
    return-void
.end method

.method setServiceKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "serviceKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->serviceKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 33
    return-void
.end method
