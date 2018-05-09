.class public Lorg/spongycastle/crypto/modes/GCFBBlockCipher;
.super Ljava/lang/Object;
.source "GCFBBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final C:[B


# instance fields
.field private final cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

.field private counter:J

.field private forEncryption:Z

.field private key:Lorg/spongycastle/crypto/params/KeyParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x0t
        0x72t
        0x22t
        0x64t
        -0x37t
        0x4t
        0x23t
        -0x73t
        0x3at
        -0x25t
        -0x6at
        0x46t
        -0x17t
        0x2at
        -0x3ct
        0x18t
        -0x2t
        -0x54t
        -0x6ct
        0x0t
        -0x13t
        0x7t
        0x12t
        -0x40t
        -0x7at
        -0x24t
        -0x3et
        -0x11t
        0x4ct
        -0x57t
        0x2bt
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    .line 34
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 42
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    .line 44
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 46
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 49
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    .line 51
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 54
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v0, :cond_2

    .line 56
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 59
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 60
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 75
    iget-wide v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    const-wide/16 v5, 0x400

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    .line 79
    .local v0, "base":Lorg/spongycastle/crypto/BlockCipher;
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 81
    const/16 v3, 0x20

    new-array v2, v3, [B

    .line 83
    .local v2, "nextKey":[B
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v2, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 84
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-interface {v0, v3, v4, v2, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 85
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-interface {v0, v3, v4, v2, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 86
    sget-object v3, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->C:[B

    const/16 v4, 0x18

    const/16 v5, 0x18

    invoke-interface {v0, v3, v4, v2, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 88
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 90
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 92
    .local v1, "iv":[B
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 94
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getCurrentIV()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v1, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 96
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    iget-boolean v4, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->forEncryption:Z

    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->key:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v6, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 99
    .end local v0    # "base":Lorg/spongycastle/crypto/BlockCipher;
    .end local v1    # "iv":[B
    .end local v2    # "nextKey":[B
    :cond_0
    iget-wide v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 101
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    return v3
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->counter:J

    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->cfbEngine:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 108
    return-void
.end method
