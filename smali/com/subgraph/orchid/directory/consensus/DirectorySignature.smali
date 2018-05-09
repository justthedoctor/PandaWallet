.class public Lcom/subgraph/orchid/directory/consensus/DirectorySignature;
.super Ljava/lang/Object;
.source "DirectorySignature.java"


# instance fields
.field private final identityDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private final signature:Lcom/subgraph/orchid/crypto/TorSignature;

.field private final signingKeyDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private final useSha256:Z


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/crypto/TorSignature;Z)V
    .locals 0
    .param p1, "identityDigest"    # Lcom/subgraph/orchid/data/HexDigest;
    .param p2, "signingKeyDigest"    # Lcom/subgraph/orchid/data/HexDigest;
    .param p3, "signature"    # Lcom/subgraph/orchid/crypto/TorSignature;
    .param p4, "useSha256"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->identityDigest:Lcom/subgraph/orchid/data/HexDigest;

    .line 15
    iput-object p2, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->signingKeyDigest:Lcom/subgraph/orchid/data/HexDigest;

    .line 16
    iput-object p3, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->signature:Lcom/subgraph/orchid/crypto/TorSignature;

    .line 17
    iput-boolean p4, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->useSha256:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->identityDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getSignature()Lcom/subgraph/orchid/crypto/TorSignature;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->signature:Lcom/subgraph/orchid/crypto/TorSignature;

    return-object v0
.end method

.method public getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->signingKeyDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public useSha256()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->useSha256:Z

    return v0
.end method
