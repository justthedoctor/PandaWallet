.class public Lcom/google/bitcoin/params/MainNetParams;
.super Lcom/google/bitcoin/core/NetworkParameters;
.source "MainNetParams.java"


# static fields
.field private static instance:Lcom/google/bitcoin/params/MainNetParams;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/bitcoin/core/NetworkParameters;-><init>()V

    .line 32
    const/16 v1, 0xf0

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->interval:I

    .line 33
    const/16 v1, 0x3840

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->targetTimespan:I

    .line 34
    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition;->proofOfWorkLimit:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->proofOfWorkLimit:Ljava/math/BigInteger;

    .line 35
    const/16 v1, 0xb7

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->dumpedPrivateKeyHeader:I

    .line 36
    const/16 v1, 0x37

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->addressHeader:I

    .line 37
    const/16 v1, 0x16

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->p2shHeader:I

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/bitcoin/params/MainNetParams;->addressHeader:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/bitcoin/params/MainNetParams;->p2shHeader:I

    aput v3, v1, v2

    iput-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->acceptableAddressCodes:[I

    .line 40
    const/16 v1, 0x57ad

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->port:I

    .line 41
    const-wide/32 v1, -0x3f3f3f40

    iput-wide v1, p0, Lcom/google/bitcoin/params/MainNetParams;->packetMagic:J

    .line 42
    iget-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->genesisBlock:Lcom/google/bitcoin/core/Block;

    sget-wide v2, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockDifficultyTarget:J

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setDifficultyTarget(J)V

    .line 43
    iget-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->genesisBlock:Lcom/google/bitcoin/core/Block;

    sget-wide v2, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockTime:J

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setTime(J)V

    .line 44
    iget-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->genesisBlock:Lcom/google/bitcoin/core/Block;

    sget-wide v2, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockNonce:J

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setNonce(J)V

    .line 45
    const-string v1, "org.pandacoin.production"

    iput-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->id:Ljava/lang/String;

    .line 46
    sget v1, Lcom/google/bitcoin/core/CoinDefinition;->subsidyDecreaseBlockCount:I

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->subsidyDecreaseBlockCount:I

    .line 47
    sget v1, Lcom/google/bitcoin/core/CoinDefinition;->spendableCoinbaseDepth:I

    iput v1, p0, Lcom/google/bitcoin/params/MainNetParams;->spendableCoinbaseDepth:I

    .line 48
    iget-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->genesisBlock:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "genesisHash":Ljava/lang/String;
    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition;->genesisHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->checkpoints:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/bitcoin/core/CoinDefinition;->initCheckpoints(Ljava/util/Map;)V

    .line 54
    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition;->dnsSeeds:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/bitcoin/params/MainNetParams;->dnsSeeds:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static declared-synchronized get()Lcom/google/bitcoin/params/MainNetParams;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/google/bitcoin/params/MainNetParams;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/bitcoin/params/MainNetParams;->instance:Lcom/google/bitcoin/params/MainNetParams;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/google/bitcoin/params/MainNetParams;

    invoke-direct {v0}, Lcom/google/bitcoin/params/MainNetParams;-><init>()V

    sput-object v0, Lcom/google/bitcoin/params/MainNetParams;->instance:Lcom/google/bitcoin/params/MainNetParams;

    .line 63
    :cond_0
    sget-object v0, Lcom/google/bitcoin/params/MainNetParams;->instance:Lcom/google/bitcoin/params/MainNetParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "main"

    return-object v0
.end method
