.class public Lcom/subgraph/orchid/crypto/TorRandom;
.super Ljava/lang/Object;
.source "TorRandom.java"


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorRandom;->createRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    .line 14
    return-void
.end method

.method private static createRandom()Ljava/security/SecureRandom;
    .locals 2

    .prologue
    .line 18
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getBytes(I)[B
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 25
    new-array v0, p1, [B

    .line 26
    .local v0, "bs":[B
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 27
    return-object v0
.end method

.method public nextInt()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public nextInt(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 8
    .param p1, "n"    # J

    .prologue
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorRandom;->nextLong()J

    move-result-wide v0

    .line 34
    .local v0, "bits":J
    rem-long v2, v0, p1

    .line 35
    .local v2, "val":J
    sub-long v4, v0, v2

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 36
    return-wide v2
.end method
