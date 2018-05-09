.class public abstract Lcom/google/bitcoin/core/NetworkParameters;
.super Ljava/lang/Object;
.source "NetworkParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BIP16_ENFORCE_TIME:I = 0x4f779a80

.field public static final ID_MAINNET:Ljava/lang/String; = "org.pandacoin.production"

.field public static final ID_TESTNET:Ljava/lang/String; = "org.pandacoin.test"

.field public static final ID_UNITTESTNET:Ljava/lang/String; = "com.google.pandacoin.unittest"

.field public static final INTERVAL:I = 0xf0

.field public static final MAX_MONEY:Ljava/math/BigInteger;

.field public static final PAYMENT_PROTOCOL_ID_MAINNET:Ljava/lang/String; = "main"

.field public static final PAYMENT_PROTOCOL_ID_TESTNET:Ljava/lang/String; = "test"

.field public static final PROTOCOL_VERSION:I = 0x11171

.field public static final SATOSHI_KEY:[B

.field public static final TARGET_SPACING:I = 0x3c

.field public static final TARGET_TIMESPAN:I = 0x3840


# instance fields
.field protected acceptableAddressCodes:[I

.field protected addressHeader:I

.field protected alertSigningKey:[B

.field protected checkpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field protected dnsSeeds:[Ljava/lang/String;

.field protected dumpedPrivateKeyHeader:I

.field protected genesisBlock:Lcom/google/bitcoin/core/Block;

.field protected id:Ljava/lang/String;

.field protected interval:I

.field protected p2shHeader:I

.field protected packetMagic:J

.field protected port:I

.field protected proofOfWorkLimit:Ljava/math/BigInteger;

.field protected spendableCoinbaseDepth:I

.field protected subsidyDecreaseBlockCount:I

.field protected targetTimespan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "04A9CFD81AF5D53310BE45E6326E706A542B1028DF85D2819D5DE496D8816C83129CE874FE5E3A23B03544BFF35458833779DAB7A6FF687525A4E23CA59F1E2B94"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/NetworkParameters;->SATOSHI_KEY:[B

    .line 160
    sget-object v0, Lcom/google/bitcoin/core/CoinDefinition;->MAX_MONEY:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->checkpoints:Ljava/util/Map;

    .line 95
    sget-object v0, Lcom/google/bitcoin/core/NetworkParameters;->SATOSHI_KEY:[B

    iput-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->alertSigningKey:[B

    .line 96
    invoke-static {p0}, Lcom/google/bitcoin/core/NetworkParameters;->createGenesis(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Block;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->genesisBlock:Lcom/google/bitcoin/core/Block;

    .line 97
    return-void
.end method

.method private static createGenesis(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Block;
    .locals 8
    .param p0, "n"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 100
    new-instance v2, Lcom/google/bitcoin/core/Block;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 101
    .local v2, "genesisBlock":Lcom/google/bitcoin/core/Block;
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v4, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 106
    .local v4, "t":Lcom/google/bitcoin/core/Transaction;
    :try_start_0
    sget-object v5, Lcom/google/bitcoin/core/CoinDefinition;->genesisTxInBytes:Ljava/lang/String;

    invoke-static {v5}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    .local v0, "bytes":[B
    new-instance v5, Lcom/google/bitcoin/core/TransactionInput;

    invoke-direct {v5, p0, v4, v0}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[B)V

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 109
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v3, "scriptPubKeyBytes":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/google/bitcoin/core/CoinDefinition;->genesisTxOutBytes:Ljava/lang/String;

    invoke-static {v5}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 112
    const/16 v5, 0xac

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    new-instance v5, Lcom/google/bitcoin/core/TransactionOutput;

    sget v6, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockValue:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, p0, v4, v6, v7}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/Block;->addTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 119
    return-object v2

    .line 114
    .end local v0    # "bytes":[B
    .end local v3    # "scriptPubKeyBytes":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static createGenesis1(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Block;
    .locals 8
    .param p0, "n"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 122
    new-instance v2, Lcom/google/bitcoin/core/Block;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 123
    .local v2, "genesisBlock":Lcom/google/bitcoin/core/Block;
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    invoke-direct {v4, p0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 128
    .local v4, "t":Lcom/google/bitcoin/core/Transaction;
    :try_start_0
    const-string v5, "04b217bb4e022309"

    invoke-static {v5}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 130
    .local v0, "bytes":[B
    new-instance v5, Lcom/google/bitcoin/core/TransactionInput;

    invoke-direct {v5, p0, v4, v0}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[B)V

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    .line 131
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v3, "scriptPubKeyBytes":Ljava/io/ByteArrayOutputStream;
    const-string v5, "04a5814813115273a109cff99907ba4a05d951873dae7acb6c973d0c9e7c88911a3dbc9aa600deac241b91707e7b4ffb30ad91c8e56e695a1ddf318592988afe0a"

    invoke-static {v5}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/bitcoin/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 134
    const/16 v5, 0xac

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    new-instance v5, Lcom/google/bitcoin/core/TransactionOutput;

    const/16 v6, 0x32

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, p0, v4, v6, v7}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v2, v4}, Lcom/google/bitcoin/core/Block;->addTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 141
    return-object v2

    .line 136
    .end local v0    # "bytes":[B
    .end local v3    # "scriptPubKeyBytes":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static fromID(Ljava/lang/String;)Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 222
    const-string v0, "org.pandacoin.production"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 224
    :cond_0
    const-string v0, "org.pandacoin.test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/google/bitcoin/params/TestNet3Params;->get()Lcom/google/bitcoin/params/TestNet3Params;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_1
    const-string v0, "com.google.pandacoin.unittest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-static {}, Lcom/google/bitcoin/params/UnitTestParams;->get()Lcom/google/bitcoin/params/UnitTestParams;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromPmtProtocolID(Ljava/lang/String;)Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .param p0, "pmtProtocolId"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 236
    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 238
    :cond_0
    const-string v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-static {}, Lcom/google/bitcoin/params/TestNet3Params;->get()Lcom/google/bitcoin/params/TestNet3Params;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static prodNet()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v0

    return-object v0
.end method

.method public static regTests()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/google/bitcoin/params/RegTestParams;->get()Lcom/google/bitcoin/params/RegTestParams;

    move-result-object v0

    return-object v0
.end method

.method public static testNet()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/bitcoin/params/TestNet3Params;->get()Lcom/google/bitcoin/params/TestNet3Params;

    move-result-object v0

    return-object v0
.end method

.method public static testNet2()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/bitcoin/params/TestNet2Params;->get()Lcom/google/bitcoin/params/TestNet2Params;

    move-result-object v0

    return-object v0
.end method

.method public static testNet3()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/google/bitcoin/params/TestNet3Params;->get()Lcom/google/bitcoin/params/TestNet3Params;

    move-result-object v0

    return-object v0
.end method

.method public static unitTests()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/bitcoin/params/UnitTestParams;->get()Lcom/google/bitcoin/params/UnitTestParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowEmptyPeerChain()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 209
    instance-of v1, p1, Lcom/google/bitcoin/core/NetworkParameters;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 210
    check-cast v0, Lcom/google/bitcoin/core/NetworkParameters;

    .line 211
    .local v0, "o":Lcom/google/bitcoin/core/NetworkParameters;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAcceptableAddressCodes()[I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->acceptableAddressCodes:[I

    return-object v0
.end method

.method public getAddressHeader()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->addressHeader:I

    return v0
.end method

.method public getAlertSigningKey()[B
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->alertSigningKey:[B

    return-object v0
.end method

.method public getDnsSeeds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->dnsSeeds:[Ljava/lang/String;

    return-object v0
.end method

.method public getDumpedPrivateKeyHeader()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->dumpedPrivateKeyHeader:I

    return v0
.end method

.method public getGenesisBlock()Lcom/google/bitcoin/core/Block;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->genesisBlock:Lcom/google/bitcoin/core/Block;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->interval:I

    return v0
.end method

.method public getP2SHHeader()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->p2shHeader:I

    return v0
.end method

.method public getPacketMagic()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->packetMagic:J

    return-wide v0
.end method

.method public abstract getPaymentProtocolId()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->port:I

    return v0
.end method

.method public getProofOfWorkLimit()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->proofOfWorkLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSpendableCoinbaseDepth()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->spendableCoinbaseDepth:I

    return v0
.end method

.method public getSubsidyDecreaseBlockCount()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->subsidyDecreaseBlockCount:I

    return v0
.end method

.method public getTargetTimespan()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/google/bitcoin/core/NetworkParameters;->targetTimespan:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCheckpoint(I)Z
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/bitcoin/core/NetworkParameters;->checkpoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    .line 262
    .local v0, "checkpointHash":Lcom/google/bitcoin/core/Sha256Hash;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public passesCheckpoint(ILcom/google/bitcoin/core/Sha256Hash;)Z
    .locals 3
    .param p1, "height"    # I
    .param p2, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/bitcoin/core/NetworkParameters;->checkpoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    .line 254
    .local v0, "checkpointHash":Lcom/google/bitcoin/core/Sha256Hash;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
