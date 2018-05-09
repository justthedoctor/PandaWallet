.class public Lcom/google/bitcoin/params/TestNet3Params;
.super Lcom/google/bitcoin/core/NetworkParameters;
.source "TestNet3Params.java"


# static fields
.field private static instance:Lcom/google/bitcoin/params/TestNet3Params;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/bitcoin/core/NetworkParameters;-><init>()V

    .line 33
    const-string v1, "org.pandacoin.test"

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->id:Ljava/lang/String;

    .line 37
    const-wide/32 v1, 0xb110907

    iput-wide v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->packetMagic:J

    .line 38
    const/16 v1, 0xf0

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->interval:I

    .line 39
    const/16 v1, 0x3840

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->targetTimespan:I

    .line 40
    const-wide/32 v1, 0x1d00ffff

    invoke-static {v1, v2}, Lcom/google/bitcoin/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->proofOfWorkLimit:Ljava/math/BigInteger;

    .line 41
    const/16 v1, 0x479d

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->port:I

    .line 42
    const/16 v1, 0x6f

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->addressHeader:I

    .line 43
    const/16 v1, 0xc4

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->p2shHeader:I

    .line 44
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/bitcoin/params/TestNet3Params;->addressHeader:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/bitcoin/params/TestNet3Params;->p2shHeader:I

    aput v3, v1, v2

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->acceptableAddressCodes:[I

    .line 45
    const/16 v1, 0xef

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->dumpedPrivateKeyHeader:I

    .line 46
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    sget-wide v2, Lcom/google/bitcoin/core/CoinDefinition;->testnetGenesisBlockTime:J

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setTime(J)V

    .line 47
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    sget-wide v2, Lcom/google/bitcoin/core/CoinDefinition;->testnetGenesisBlockDifficultyTarget:J

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setDifficultyTarget(J)V

    .line 48
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    sget-wide v2, Lcom/google/bitcoin/core/CoinDefinition;->testnetGenesisBlockNonce:J

    invoke-virtual {v1, v2, v3}, Lcom/google/bitcoin/core/Block;->setNonce(J)V

    .line 49
    const/16 v1, 0x64

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->spendableCoinbaseDepth:I

    .line 50
    sget v1, Lcom/google/bitcoin/core/CoinDefinition;->subsidyDecreaseBlockCount:I

    iput v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->subsidyDecreaseBlockCount:I

    .line 51
    iget-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->genesisBlock:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "genesisHash":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->alertSigningKey:[B

    .line 56
    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition;->testnetDnsSeeds:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/bitcoin/params/TestNet3Params;->dnsSeeds:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static declared-synchronized get()Lcom/google/bitcoin/params/TestNet3Params;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/google/bitcoin/params/TestNet3Params;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/bitcoin/params/TestNet3Params;->instance:Lcom/google/bitcoin/params/TestNet3Params;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/bitcoin/params/TestNet3Params;

    invoke-direct {v0}, Lcom/google/bitcoin/params/TestNet3Params;-><init>()V

    sput-object v0, Lcom/google/bitcoin/params/TestNet3Params;->instance:Lcom/google/bitcoin/params/TestNet3Params;

    .line 65
    :cond_0
    sget-object v0, Lcom/google/bitcoin/params/TestNet3Params;->instance:Lcom/google/bitcoin/params/TestNet3Params;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "test"

    return-object v0
.end method
