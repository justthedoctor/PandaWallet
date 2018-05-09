.class public Lcom/google/bitcoin/core/CoinDefinition;
.super Ljava/lang/Object;
.source "CoinDefinition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/CoinDefinition$CoinHash;,
        Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;
    }
.end annotation


# static fields
.field public static final AddressHeader:I = 0x37

.field public static final BLOCKEXPLORER_ADDRESS_PATH:Ljava/lang/String; = "address/"

.field public static final BLOCKEXPLORER_BASE_URL_PROD:Ljava/lang/String; = "http://pnd.showed.us/"

.field public static final BLOCKEXPLORER_BASE_URL_TEST:Ljava/lang/String; = "http://pnd.showed.us/"

.field public static final BLOCKEXPLORER_BLOCK_PATH:Ljava/lang/String; = "block/"

.field public static final BLOCKEXPLORER_TRANSACTION_PATH:Ljava/lang/String; = "tx/"

.field public static final BLOCK_CURRENTVERSION:I = 0x3

.field public static final DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

.field public static final DONATION_ADDRESS:Ljava/lang/String; = "PBtL2vd8PShVg9WEu8YdiqCEQmjSrniuFx"

.field public static final DUST_LIMIT:Ljava/math/BigInteger;

.field public static final ID_MAINNET:Ljava/lang/String; = "org.pandacoin.production"

.field public static final ID_TESTNET:Ljava/lang/String; = "org.pandacoin.test"

.field public static final ID_UNITTESTNET:Ljava/lang/String; = "com.google.pandacoin.unittest"

.field public static final INTERVAL:I = 0xf0

.field public static final INTERVAL_0:I = 0x438

.field public static final INTERVAL_1:I = 0x6c

.field public static final MAX_BLOCK_SIZE:I = 0xf4240

.field public static final MAX_MONEY:Ljava/math/BigInteger;

.field public static final MIN_PROTOCOL_VERSION:I = 0xea62

.field public static final PATTERN_PRIVATE_KEY_START:Ljava/lang/String; = "6"

.field public static final PROTOCOL_VERSION:I = 0x11171

.field public static final PacketMagic:J = -0x3f3f3f40L

.field public static final Port:I = 0x57ad

.field public static final SATOSHI_KEY:Ljava/lang/String; = "04A9CFD81AF5D53310BE45E6326E706A542B1028DF85D2819D5DE496D8816C83129CE874FE5E3A23B03544BFF35458833779DAB7A6FF687525A4E23CA59F1E2B94"

.field public static final TARGET_SPACING:I = 0x3c

.field public static final TARGET_SPACING_0:I = 0x14

.field public static final TARGET_SPACING_1:I = 0x14

.field public static final TARGET_TIMESPAN:I = 0x3840

.field public static final TARGET_TIMESPAN_0:I = 0x5460

.field public static final TARGET_TIMESPAN_1:I = 0x870

.field public static final TESTNET_SATOSHI_KEY:Ljava/lang/String; = ""

.field public static final TestPort:I = 0x464f

.field public static final UNITTEST_ADDRESS:Ljava/lang/String; = "DPHYTSm3f96dHRY3VG1vZAFC1QrEPkEQnt"

.field public static final UNITTEST_ADDRESS_PRIVATE_KEY:Ljava/lang/String; = "QU1rjHbrdJonVUgjT7Mncw7PEyPv3fMPvaGXp9EHDs1uzdJ98hUZ"

.field public static final allowBitcoinPrivateKey:Z = true

.field public static blockHeight:I = 0x0

.field public static checkpointDaysBack:I = 0x0

.field public static checkpointFileSupport:Z = false

.field public static final coinName:Ljava/lang/String; = "Pandacoin"

.field public static final coinPOWHash:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

.field public static final coinPrecision:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

.field public static final coinTicker:Ljava/lang/String; = "PND"

.field public static final coinURIScheme:Ljava/lang/String; = "pandacoin"

.field public static final cryptsyMarketCurrency:Ljava/lang/String; = "BTC"

.field public static final cryptsyMarketId:Ljava/lang/String; = "26"

.field public static dnsSeeds:[Ljava/lang/String; = null

.field public static genesisBlockDifficultyTarget:J = 0x0L

.field public static genesisBlockNonce:J = 0x0L

.field public static genesisBlockTime:J = 0x0L

.field public static genesisBlockValue:I = 0x0

.field public static genesisHash:Ljava/lang/String; = null

.field public static genesisTxInBytes:Ljava/lang/String; = null

.field public static genesisTxOutBytes:Ljava/lang/String; = null

.field public static minBroadcastConnections:I = 0x0

.field private static nDifficultySwitchHeight:I = 0x0

.field private static nDifficultySwitchHeightTwo:I = 0x0

.field private static nInflationFixHeight:I = 0x0

.field public static final p2shHeader:I = 0x16

.field public static proofOfWorkLimit:Ljava/math/BigInteger; = null

.field public static spendableCoinbaseDepth:I = 0x0

.field public static subsidyDecreaseBlockCount:I = 0x0

.field public static final supportsBloomFiltering:Z = false

.field public static final supportsTestNet:Z = false

.field public static final testnetAddressHeader:I = 0x6f

.field public static testnetDnsSeeds:[Ljava/lang/String; = null

.field public static testnetGenesisBlockDifficultyTarget:J = 0x0L

.field public static testnetGenesisBlockNonce:J = 0x0L

.field public static testnetGenesisBlockTime:J = 0x0L

.field public static final testnetGenesisHash:Ljava/lang/String; = "5e039e1ca1dbf128973bf6cff98169e40a1b194c3b91463ab74956f413b2f9c8"

.field public static final testnetPacketMagic:J = -0x33e4824L

.field public static final testnetp2shHeader:I = 0xc4


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1e0ffff0

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 25
    sput v4, Lcom/google/bitcoin/core/CoinDefinition;->blockHeight:I

    .line 35
    sget-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->Coins:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->coinPrecision:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    .line 50
    sget-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->scrypt:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->coinPOWHash:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    .line 52
    sput-boolean v3, Lcom/google/bitcoin/core/CoinDefinition;->checkpointFileSupport:Z

    .line 53
    const/16 v0, 0x15

    sput v0, Lcom/google/bitcoin/core/CoinDefinition;->checkpointDaysBack:I

    .line 67
    const v0, 0x74478

    sput v0, Lcom/google/bitcoin/core/CoinDefinition;->nDifficultySwitchHeight:I

    .line 68
    const v0, 0x7fe18

    sput v0, Lcom/google/bitcoin/core/CoinDefinition;->nInflationFixHeight:I

    .line 69
    const v0, 0x98c88

    sput v0, Lcom/google/bitcoin/core/CoinDefinition;->nDifficultySwitchHeightTwo:I

    .line 111
    sput v5, Lcom/google/bitcoin/core/CoinDefinition;->spendableCoinbaseDepth:I

    .line 112
    const-wide/32 v0, 0xbebc200

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/Utils;->COIN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->MAX_MONEY:Ljava/math/BigInteger;

    .line 115
    const-wide/32 v0, 0x989680

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    .line 116
    sget-object v0, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->DUST_LIMIT:Ljava/math/BigInteger;

    .line 142
    sput-wide v6, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockDifficultyTarget:J

    .line 143
    const-wide/32 v0, 0x52ffb0a3

    sput-wide v0, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockTime:J

    .line 144
    const-wide/32 v0, 0x1785c1

    sput-wide v0, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockNonce:J

    .line 145
    const-string v0, "68fad98bd07315eef904fa3bf4344a38cb4f05549f659272bad7b4e88961d4c5"

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->genesisHash:Ljava/lang/String;

    .line 146
    const/16 v0, 0x58

    sput v0, Lcom/google/bitcoin/core/CoinDefinition;->genesisBlockValue:I

    .line 148
    const-string v0, "04FFFF001D010412446F6E277420747275737420576F6C6F6E67"

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->genesisTxInBytes:Ljava/lang/String;

    .line 149
    const-string v0, "040184710fa689ad5023690c80f3a49c8f13f8d45b8c857fbcbc8bc4a8e4d3eb4b10f4d4604fa08dce601aaf0f470216fe1b51850b4acf21b179c45070ac7b03a9"

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->genesisTxOutBytes:Ljava/lang/String;

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "seeder.pandapool.info"

    aput-object v1, v0, v4

    const-string v1, "seeder.bamboohouse.info"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "seeder.thepandacoin.net"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "seeder.digitalpandacoin.org"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "seeder.showed.us"

    aput-object v2, v0, v1

    const-string v1, "seeder.altmin.es"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->dnsSeeds:[Ljava/lang/String;

    .line 161
    sput v3, Lcom/google/bitcoin/core/CoinDefinition;->minBroadcastConnections:I

    .line 171
    sput-wide v6, Lcom/google/bitcoin/core/CoinDefinition;->testnetGenesisBlockDifficultyTarget:J

    .line 172
    const-wide/32 v0, 0xf423f

    sput-wide v0, Lcom/google/bitcoin/core/CoinDefinition;->testnetGenesisBlockTime:J

    .line 173
    const-wide/32 v0, 0x1869f

    sput-wide v0, Lcom/google/bitcoin/core/CoinDefinition;->testnetGenesisBlockNonce:J

    .line 238
    const v0, 0x482e20

    sput v0, Lcom/google/bitcoin/core/CoinDefinition;->subsidyDecreaseBlockCount:I

    .line 240
    const-wide/32 v0, 0x1e0fffff

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->proofOfWorkLimit:Ljava/math/BigInteger;

    .line 244
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "not supported"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition;->testnetDnsSeeds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final GetBlockReward(I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "height"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, "COIN":I
    const/16 v2, 0xf

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    .line 195
    .local v1, "nSubsidy":Ljava/math/BigInteger;
    const/16 v2, 0x438

    if-ge p0, v2, :cond_0

    .line 197
    invoke-static {v4, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 235
    :goto_1
    return-object v2

    .line 199
    :cond_0
    const/16 v2, 0x870

    if-ge p0, v2, :cond_1

    .line 201
    const/4 v2, 0x1

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_1
    const/16 v2, 0xca8

    if-ge p0, v2, :cond_2

    .line 205
    invoke-static {v4, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 207
    :cond_2
    const/16 v2, 0x10e0

    if-ge p0, v2, :cond_3

    .line 209
    const/4 v2, 0x5

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_3
    const/16 v2, 0x1518

    if-ge p0, v2, :cond_4

    .line 213
    const/16 v2, 0x8

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_4
    const/16 v2, 0x1950

    if-ge p0, v2, :cond_5

    .line 217
    const/16 v2, 0xb

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 219
    :cond_5
    const/16 v2, 0x1d88

    if-ge p0, v2, :cond_6

    .line 221
    const/16 v2, 0xe

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_6
    const/16 v2, 0x21c0

    if-ge p0, v2, :cond_7

    .line 225
    const/16 v2, 0x11

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 227
    :cond_7
    const v2, 0x7fe18

    if-ge p0, v2, :cond_8

    .line 229
    const/16 v2, 0x14

    invoke-static {v2, v3}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(II)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 233
    :cond_8
    sget v2, Lcom/google/bitcoin/core/CoinDefinition;->subsidyDecreaseBlockCount:I

    div-int v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1
.end method

.method public static final getInterval(IZ)I
    .locals 1
    .param p0, "height"    # I
    .param p1, "testNet"    # Z

    .prologue
    .line 79
    const/16 v0, 0xf0

    return v0
.end method

.method public static final getIntervalCheckpoints()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x438

    return v0
.end method

.method public static getMaxTimeSpan(IIZ)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "height"    # I
    .param p2, "testNet"    # Z

    .prologue
    .line 95
    sget v0, Lcom/google/bitcoin/core/CoinDefinition;->nDifficultySwitchHeight:I

    if-ge p1, v0, :cond_0

    .line 96
    mul-int/lit8 v0, p0, 0x4

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    sget v0, Lcom/google/bitcoin/core/CoinDefinition;->nInflationFixHeight:I

    if-ge p1, v0, :cond_1

    .line 98
    mul-int/lit8 v0, p0, 0x2

    goto :goto_0

    .line 100
    :cond_1
    mul-int/lit8 v0, p0, 0x4b

    div-int/lit8 v0, v0, 0x3c

    goto :goto_0
.end method

.method public static getMinTimeSpan(IIZ)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "height"    # I
    .param p2, "testNet"    # Z

    .prologue
    .line 104
    sget v0, Lcom/google/bitcoin/core/CoinDefinition;->nDifficultySwitchHeight:I

    if-ge p1, v0, :cond_0

    .line 105
    div-int/lit8 v0, p0, 0x4

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    sget v0, Lcom/google/bitcoin/core/CoinDefinition;->nInflationFixHeight:I

    if-ge p1, v0, :cond_1

    .line 107
    div-int/lit8 v0, p0, 0x2

    goto :goto_0

    .line 109
    :cond_1
    mul-int/lit8 v0, p0, 0x37

    div-int/lit8 v0, v0, 0x49

    goto :goto_0
.end method

.method public static final getTargetTimespan(IZ)I
    .locals 1
    .param p0, "height"    # I
    .param p1, "testNet"    # Z

    .prologue
    .line 91
    const/16 v0, 0x3840

    return v0
.end method

.method public static initCheckpoints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "checkpoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/bitcoin/core/Sha256Hash;>;"
    return-void
.end method

.method public static lowerCaseCoinName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "Pandacoin"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static supportsIrcDiscovery()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public static final usingInflationFixProtocol(I)Z
    .locals 1
    .param p0, "height"    # I

    .prologue
    .line 186
    sget v0, Lcom/google/bitcoin/core/CoinDefinition;->nInflationFixHeight:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final usingNewDifficultyProtocol(I)Z
    .locals 1
    .param p0, "height"    # I

    .prologue
    .line 181
    sget v0, Lcom/google/bitcoin/core/CoinDefinition;->nDifficultySwitchHeight:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
