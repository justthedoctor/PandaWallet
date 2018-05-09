.class public Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
.super Ljava/lang/Object;
.source "HSDescriptor.java"


# static fields
.field private static final MS_24_HOURS:J = 0x5265c00L


# instance fields
.field private descriptorId:Lcom/subgraph/orchid/data/HexDigest;

.field private final hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

.field private introductionPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private permanentKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

.field private protocolVersions:[I

.field private publicationTime:Lcom/subgraph/orchid/data/Timestamp;

.field private secretIdPart:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;)V
    .locals 1
    .param p1, "hiddenService"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->introductionPoints:Ljava/util/List;

    .line 24
    return-void
.end method

.method private shuffle(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;>;"
    new-instance v1, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v1}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    .line 94
    .local v1, "r":Lcom/subgraph/orchid/crypto/TorRandom;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 95
    .local v2, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 96
    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->swap(Ljava/util/List;II)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-object p1
.end method

.method private swap(Ljava/util/List;II)V
    .locals 2
    .param p2, "a"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;>;"
    if-ne p2, p3, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .line 106
    .local v0, "tmp":Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method addIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 1
    .param p1, "ip"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->introductionPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->descriptorId:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method getHiddenService()Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    return-object v0
.end method

.method getIntroductionPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->introductionPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getPermanentKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->permanentKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method getProtocolVersions()[I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->protocolVersions:[I

    return-object v0
.end method

.method getPublicationTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->publicationTime:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method getSecretIdPart()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->secretIdPart:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method getShuffledIntroductionPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->getIntroductionPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->shuffle(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVersion()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    return v0
.end method

.method isExpired()Z
    .locals 8

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, "now":J
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->publicationTime:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v4}, Lcom/subgraph/orchid/data/Timestamp;->getTime()J

    move-result-wide v2

    .line 81
    .local v2, "then":J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method setDescriptorId(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "descriptorId"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->descriptorId:Lcom/subgraph/orchid/data/HexDigest;

    .line 40
    return-void
.end method

.method setPermanentKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0
    .param p1, "permanentKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->permanentKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 44
    return-void
.end method

.method setProtocolVersions([I)V
    .locals 0
    .param p1, "protocolVersions"    # [I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->protocolVersions:[I

    .line 48
    return-void
.end method

.method setPublicationTime(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "ts"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->publicationTime:Lcom/subgraph/orchid/data/Timestamp;

    .line 32
    return-void
.end method

.method setSecretIdPart(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "secretIdPart"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->secretIdPart:Lcom/subgraph/orchid/data/HexDigest;

    .line 36
    return-void
.end method
