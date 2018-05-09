.class public Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;
.super Ljava/lang/Object;
.source "RequiredCertificateImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;


# instance fields
.field private downloadFailureCount:I

.field private final identity:Lcom/subgraph/orchid/data/HexDigest;

.field private final signingKey:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;
    .param p2, "signingKey"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    .line 15
    iput-object p2, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 36
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;

    .line 38
    .local v0, "other":Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v3, :cond_4

    .line 39
    iget-object v3, v0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v3, :cond_5

    move v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    iget-object v4, v0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_5
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v3, :cond_6

    .line 44
    iget-object v3, v0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v3, :cond_0

    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_6
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    iget-object v4, v0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 47
    goto :goto_0
.end method

.method public getAuthorityIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getDownloadFailureCount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->downloadFailureCount:I

    return v0
.end method

.method public getSigningKey()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 20
    const/16 v0, 0x1f

    .line 21
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 22
    .local v1, "result":I
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 24
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 26
    return v1

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v2}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v2

    goto :goto_0

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v3}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public incrementDownloadFailureCount()V
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->downloadFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->downloadFailureCount:I

    .line 53
    return-void
.end method
