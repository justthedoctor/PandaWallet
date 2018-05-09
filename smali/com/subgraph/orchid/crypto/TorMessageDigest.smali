.class public Lcom/subgraph/orchid/crypto/TorMessageDigest;
.super Ljava/lang/Object;
.source "TorMessageDigest.java"


# static fields
.field private static final TOR_DIGEST256_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final TOR_DIGEST256_SIZE:I = 0x20

.field private static final TOR_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field public static final TOR_DIGEST_SIZE:I = 0x14


# instance fields
.field private final digestInstance:Ljava/security/MessageDigest;

.field private final isDigest256:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isDigest256"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->createDigestInstance(Z)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    .line 28
    iput-boolean p1, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->isDigest256:Z

    .line 29
    return-void
.end method

.method private createDigestInstance(Z)Ljava/security/MessageDigest;
    .locals 3
    .param p1, "isDigest256"    # Z

    .prologue
    .line 37
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "SHA-256"

    .line 38
    .local v0, "algorithm":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    return-object v2

    .line 37
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_0
    const-string v0, "SHA-1"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getDigestBytes()[B
    .locals 3

    .prologue
    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 62
    .local v0, "clone":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 63
    .end local v0    # "clone":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getHexDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public isDigest256()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->isDigest256:Z

    return v0
.end method

.method public peekDigest([BII)[B
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 76
    .local v0, "clone":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 77
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 78
    .end local v0    # "clone":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public update([B)V
    .locals 1
    .param p1, "input"    # [B

    .prologue
    .line 99
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 112
    return-void
.end method
