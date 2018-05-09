.class public Lcom/google/bitcoin/params/RegTestParams;
.super Lcom/google/bitcoin/params/TestNet2Params;
.source "RegTestParams.java"


# static fields
.field private static final PROOF_OF_WORK_LIMIT:Ljava/math/BigInteger;

.field private static genesis:Lcom/google/bitcoin/core/Block;

.field private static instance:Lcom/google/bitcoin/params/RegTestParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/params/RegTestParams;->PROOF_OF_WORK_LIMIT:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/bitcoin/params/TestNet2Params;-><init>()V

    .line 33
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/bitcoin/params/RegTestParams;->interval:I

    .line 34
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->PROOF_OF_WORK_LIMIT:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/params/RegTestParams;->proofOfWorkLimit:Ljava/math/BigInteger;

    .line 35
    const/16 v0, 0x96

    iput v0, p0, Lcom/google/bitcoin/params/RegTestParams;->subsidyDecreaseBlockCount:I

    .line 36
    const/16 v0, 0x480c

    iput v0, p0, Lcom/google/bitcoin/params/RegTestParams;->port:I

    .line 37
    return-void
.end method

.method public static declared-synchronized get()Lcom/google/bitcoin/params/RegTestParams;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/google/bitcoin/params/RegTestParams;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->instance:Lcom/google/bitcoin/params/RegTestParams;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/bitcoin/params/RegTestParams;

    invoke-direct {v0}, Lcom/google/bitcoin/params/RegTestParams;-><init>()V

    sput-object v0, Lcom/google/bitcoin/params/RegTestParams;->instance:Lcom/google/bitcoin/params/RegTestParams;

    .line 65
    :cond_0
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->instance:Lcom/google/bitcoin/params/RegTestParams;
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
.method public allowEmptyPeerChain()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getGenesisBlock()Lcom/google/bitcoin/core/Block;
    .locals 4

    .prologue
    .line 48
    const-class v1, Lcom/google/bitcoin/params/RegTestParams;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->genesis:Lcom/google/bitcoin/core/Block;

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0}, Lcom/google/bitcoin/params/TestNet2Params;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/params/RegTestParams;->genesis:Lcom/google/bitcoin/core/Block;

    .line 51
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->genesis:Lcom/google/bitcoin/core/Block;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/bitcoin/core/Block;->setNonce(J)V

    .line 52
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->genesis:Lcom/google/bitcoin/core/Block;

    const-wide/32 v2, 0x207fffff

    invoke-virtual {v0, v2, v3}, Lcom/google/bitcoin/core/Block;->setDifficultyTarget(J)V

    .line 53
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->genesis:Lcom/google/bitcoin/core/Block;

    const-wide/32 v2, 0x4d49e5da

    invoke-virtual {v0, v2, v3}, Lcom/google/bitcoin/core/Block;->setTime(J)V

    .line 56
    :cond_0
    sget-object v0, Lcom/google/bitcoin/params/RegTestParams;->genesis:Lcom/google/bitcoin/core/Block;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method
