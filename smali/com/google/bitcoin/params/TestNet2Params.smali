.class public Lcom/google/bitcoin/params/TestNet2Params;
.super Lcom/google/bitcoin/core/NetworkParameters;
.source "TestNet2Params.java"


# static fields
.field private static instance:Lcom/google/bitcoin/params/TestNet2Params;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/bitcoin/core/NetworkParameters;-><init>()V

    .line 32
    const-string v1, "org.pandacoin.test"

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->id:Ljava/lang/String;

    .line 33
    const-wide v1, 0xfabfb5daL

    iput-wide v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->packetMagic:J

    .line 35
    const/16 v1, 0x464f

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->port:I

    .line 36
    const/16 v1, 0x6f

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->addressHeader:I

    .line 37
    const/16 v1, 0xc4

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->p2shHeader:I

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/bitcoin/params/TestNet2Params;->addressHeader:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/bitcoin/params/TestNet2Params;->p2shHeader:I

    aput v3, v1, v2

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->acceptableAddressCodes:[I

    .line 39
    const/16 v1, 0xf0

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->interval:I

    .line 40
    const/16 v1, 0x3840

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->targetTimespan:I

    .line 41
    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition;->proofOfWorkLimit:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->proofOfWorkLimit:Ljava/math/BigInteger;

    .line 42
    const/16 v1, 0xef

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->dumpedPrivateKeyHeader:I

    .line 44
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    const-wide/32 v2, 0x4d49e5da

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setTime(J)V

    .line 45
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    const-wide/32 v2, 0x1d07fff8

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setDifficultyTarget(J)V

    .line 46
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    const-wide/32 v2, 0x16ec0bff    # 1.90001995E-315

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setNonce(J)V

    .line 47
    sget v1, Lcom/google/bitcoin/core/CoinDefinition;->spendableCoinbaseDepth:I

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->spendableCoinbaseDepth:I

    .line 48
    sget v1, Lcom/google/bitcoin/core/CoinDefinition;->subsidyDecreaseBlockCount:I

    iput v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->subsidyDecreaseBlockCount:I

    .line 49
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "genesisHash":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet2Params;->dnsSeeds:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static declared-synchronized get()Lcom/google/bitcoin/params/TestNet2Params;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/google/bitcoin/params/TestNet2Params;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/bitcoin/params/TestNet2Params;->instance:Lcom/google/bitcoin/params/TestNet2Params;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/bitcoin/params/TestNet2Params;

    invoke-direct {v0}, Lcom/google/bitcoin/params/TestNet2Params;-><init>()V

    sput-object v0, Lcom/google/bitcoin/params/TestNet2Params;->instance:Lcom/google/bitcoin/params/TestNet2Params;

    .line 59
    :cond_0
    sget-object v0, Lcom/google/bitcoin/params/TestNet2Params;->instance:Lcom/google/bitcoin/params/TestNet2Params;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
