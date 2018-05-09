.class public Lcom/google/bitcoin/params/UnitTestParams;
.super Lcom/google/bitcoin/core/NetworkParameters;
.source "UnitTestParams.java"


# static fields
.field private static instance:Lcom/google/bitcoin/params/UnitTestParams;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/bitcoin/core/NetworkParameters;-><init>()V

    .line 32
    const-string v0, "com.google.pandacoin.unittest"

    iput-object v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->id:Ljava/lang/String;

    .line 33
    const-wide/32 v0, 0xb110907

    iput-wide v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->packetMagic:J

    .line 34
    const/16 v0, 0x6f

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->addressHeader:I

    .line 35
    const/16 v0, 0xc4

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->p2shHeader:I

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/bitcoin/params/UnitTestParams;->addressHeader:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/bitcoin/params/UnitTestParams;->p2shHeader:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->acceptableAddressCodes:[I

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "00ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->proofOfWorkLimit:Ljava/math/BigInteger;

    .line 38
    iget-object v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->genesisBlock:Lcom/google/bitcoin/core/Block;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Block;->setTime(J)V

    .line 39
    iget-object v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->genesisBlock:Lcom/google/bitcoin/core/Block;

    const-wide/32 v1, 0x207fffff

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Block;->setDifficultyTarget(J)V

    .line 40
    iget-object v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->genesisBlock:Lcom/google/bitcoin/core/Block;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->solve()V

    .line 41
    const/16 v0, 0x464f

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->port:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->interval:I

    .line 43
    const/16 v0, 0xef

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->dumpedPrivateKeyHeader:I

    .line 44
    const v0, 0xbebc200

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->targetTimespan:I

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->spendableCoinbaseDepth:I

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->subsidyDecreaseBlockCount:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/params/UnitTestParams;->dnsSeeds:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static declared-synchronized get()Lcom/google/bitcoin/params/UnitTestParams;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/google/bitcoin/params/UnitTestParams;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/bitcoin/params/UnitTestParams;->instance:Lcom/google/bitcoin/params/UnitTestParams;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/google/bitcoin/params/UnitTestParams;

    invoke-direct {v0}, Lcom/google/bitcoin/params/UnitTestParams;-><init>()V

    sput-object v0, Lcom/google/bitcoin/params/UnitTestParams;->instance:Lcom/google/bitcoin/params/UnitTestParams;

    .line 55
    :cond_0
    sget-object v0, Lcom/google/bitcoin/params/UnitTestParams;->instance:Lcom/google/bitcoin/params/UnitTestParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method
