.class public Lcom/google/bitcoin/net/discovery/SeedPeers;
.super Ljava/lang/Object;
.source "SeedPeers.java"

# interfaces
.implements Lcom/google/bitcoin/net/discovery/PeerDiscovery;


# static fields
.field public static seedAddrs:[I


# instance fields
.field private params:Lcom/google/bitcoin/core/NetworkParameters;

.field private pnseedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x140

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/bitcoin/net/discovery/SeedPeers;->seedAddrs:[I

    return-void

    :array_0
    .array-data 4
        0x1ddb1032
        0x6242ce40
        0x52d6a445
        0x2dd7a445
        -0x75ac32b9
        0x73263750
        -0x25dc3da9
        -0x132b12a9
        0xa40ec59
        0x75dce160    # 5.5999827E32f
        0x7df76791
        -0x76c8f453
        -0x5b0deb53
        0x767700ae
        0x638b0418
        -0x7975efe8
        -0x3260ccd2
        0x129653e
        -0x336d23c2    # -7.6997104E7f
        -0x6998e9c0
        0x56487e40
        0x5b66f440
        -0x4e2fe0bf
        -0xe239fbf
        -0x3e2ed4be
        -0x7945edbd    # -6.9992257E-35f
        0x6be4df43
        0x6d4cef43
        -0x2e71f9bc
        0x1ab0b344
        0x6584a345
        -0x183e5bbb
        0x58cea445
        -0x3a255bbb
        0x21dda445
        0x3d3b5346
        0x13e55347
        0x1080d24a
        -0x719ee1b5
        -0x7eae71b5
        0x6c839e4b
        -0x1d52f5b4
        -0x443f5b4
        0x7f5b6e4c
        0x7244224e
        0x1300554e
        0x20690652
        0x5a48b652
        0x75c5c752
        0x4335cc54
        0x340fd154
        -0x783f8bab
        0x87b2b56
        -0x75ecc5a9
        -0x53dc3da9
        0x70374959
        -0x49c2ba5
        -0x465e97a4
        0x180d765c
        0x674f645d
        0x4d3495e
        0x1de44b5e
        0x4ee8a362
        0xded1b63
        -0x3e4fb493
        -0x726dea7f
        -0x6848157e
        0x1cf83a8e
        -0x6eb6f453
        0x9dc75ae
        -0x65928652
        -0x5d928652
        0xfd08fae
        0xf3e3fb2    # 9.3799905E-30f
        0x4f944fb2    # 4.9765018E9f
        -0x335bb748    # -8.613216E7f
        0x3ecd6ab8
        -0x562a5a44
        -0x72fee63f
        0x45997d5
        -0x35fe6227
        0xd526c4d
        -0x540e45bc
        0x66b1ab55
        0x1165f462
        0x3ed7cbad
        -0x5c705192
        0x3bd2cbad
        -0x2c90fab9
        0x20df7840
        0x7a337742    # 2.3296E35f
        0x549f8e4b
        -0x6f9dc9a4
        -0x2c660a9e
        0x2b5274a1
        -0x71205ead
        0x3bffb347
        0x7074bf58
        -0x48b03453
        0x5b5a795b
        0x2fa29ce
        0x5a6738d4
        -0x175e2dc2
        -0x10673bbb
        0x4b0f494c    # 9390412.0f
        -0x5d43e1aa
        0x7694ad63
        -0x5b57ff3d
        0x5fda6cd
        -0x60dde8a2
        0x364a795b
        0x536285d5
        -0x53bb362c
        0xb06254d
        0x150c2fd4
        0x32a50dcc
        -0x28631b8
        -0xea305ad
        0x66c01e60
        0x6bc26661
        -0x3fc4b852
        0x4dda1b81    # 4.57404448E8f
        0x3285a4c1
        -0x77c35693
        0x35d60a4c
        -0x251f68bc
        0x2e314d61
        -0x7b1db831
        0x6c814552
        0x3a1cc658
        -0x67270c7e
        -0x1a7b34a5
        0x15e86057
        0x7b01504e
        -0x27ad22b8
        0x56382f56
        0xa5df454
        -0x5f2e72e8
        0x2e89b148
        -0x5863eeb4
        -0x34232fac    # -2.8942504E7f
        0x5523bc43
        -0x567cd9c0
        -0x75f99ebc
        0x3894c3bc
        -0x548940a8
        0x6a018ac1
        -0x140b0bd
        0x2f26c658
        0x31102f4e
        -0x7a16d62b
        0x2a1c175e
        -0x393d32f
        0x27b04b6d
        -0x20fdb9b0
        0x161748b8
        0x28be6580
        0x57be6580
        0x1cee677a
        -0x559448be
        -0x65ac69b5
        0xa5a2d4d
        0x2434c658
        -0x65b6b0a9
        0x1ebb0e48
        -0x9ef47a3
        0x77ecf44
        0x85128bc
        0x5ba17a18
        0x27ca1b42
        -0x75ff4aa
        -0x32b3da9
        -0x30d03ea2
        -0x27681fae
        0x4cada04f    # 9.1030136E7f
        0x2f35f6d5
        0x382ce8c9
        -0x1adc67b5
        0x3f946846
        0x60c8be43
        0x41da6257
        -0x21f41ebe
        -0x5175abb5
        -0x100f3dac
        0x1e0f795b
        -0x514d7770
        -0x35e95327
        0x1e47ddd8
        -0x7373b7d7
        -0x2d8238b9
        -0x2ac4e99d
        0x4096b163
        -0x637226a8
        -0x34ed07a0    # -9631840.0f
        -0x6186cfa4
        0x40c1a445
        0x4a90c2bc    # 4743518.0f
        0x2c3a464d
        0x2727f23c
        0x30b04b6d
        0x59024cb8
        -0x5f6e1953
        0x31b04b6d
        -0x3d62b95a
        0x63934fb2
        -0x26ddb242
        -0x60a6ef28
        0x7f530a6b
        0x752e9c95
        0x65453548
        -0x5b7b41ba
        -0x31a5e4a7
        0x710e0718
        0x46a13d18
        -0x2550ace8
        -0x3b5700ad
        -0x785455ae
        -0x489b30af
        -0x4dfda2b6
        0x6d351e41
        -0x3fca3cc2
        -0x5bcd3e9e
        0x61ef34ae
        -0x2e902244
        0x870e8c1
        0x3070e8c1
        -0x638e173f
        -0x5b66dc9d
        -0x7a5e099d
        0x4184e559
        0x18d96ed8
        0x17b8dbd5
        0x60e7cd18
        -0x1a11efb4
        -0x54e8539e
        0x1e786e1b
        0x5d23b762
        -0xdc77052
        -0x77d8fca0
        -0x61a4c280
        0x7da518b2
        -0x4a9ec4bb
        0x1ad41f3e
        -0x2aaf7ab6
        -0x79e81657
        -0x6da4dd64
        -0xd16dabe
        0x47af0544
        0x73b5a843
        -0x46485f53
        0x3a748d0
        0xa6ff862
        0x6694df62
        0x3bfac948
        -0x71f670b1
        0x746916c3
        0x2f38e4f
        0x40bb1243
        0x6a54d162
        0x6008414b
        -0x5aec86b4
        0x514aa343
        0x63781747
        -0x244986a5
        -0x12f9afa8
        0x42d24b46
        0x1518794c
        -0x64d8e97f
        0x73e4ffad
        0x654784f
        0x438dc945
        0x641846a6
        0x2d1b0944
        -0x6b4a6eb8
        -0x72c96aa8
        -0x5a56899e
        -0x748fa4be
        -0x316dfb52
        -0x72a7bbb0
        0x2df61555
        -0x114006bd
        0x2e75fb4d
        0x3ef8fc57
        -0x66deeca2
        -0x71cefbd2
        -0x4a5052bd
        -0x7613122f
        -0x63033fb9
        -0x7032f0b4
        -0x41b60a53
        0x146a8d45
        -0x67996548
        -0x6726e8a2
        -0x2e571b93
        -0x7c65c548
        0x40a0016c    # 5.0001736f
        0x6d27c257
        -0x68800053
        0x7baa5d5d
        0x1213be43
        -0x4e981a57
        0x640fe8ca
        -0x436159ab
        0xf820a4c
        0xf097059
        0x69ac957c
        0x366d8453
        -0x4e45d7bc
        -0x77a80f7f
        0x70b5be63
        -0x3ababab5
        -0x50c9212f
        -0x4a5b4fae
        0x21f062d1
        0x72ab89b2
        0x74a45318
        -0x7ced1944
        -0x46e969a1
        -0x755837a8
        -0x1810053
    .end array-data
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/SeedPeers;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 37
    return-void
.end method

.method private allPeers()[Ljava/net/InetSocketAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v2, Lcom/google/bitcoin/net/discovery/SeedPeers;->seedAddrs:[I

    array-length v2, v2

    new-array v0, v2, [Ljava/net/InetSocketAddress;

    .line 75
    .local v0, "addresses":[Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/google/bitcoin/net/discovery/SeedPeers;->seedAddrs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 76
    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/google/bitcoin/net/discovery/SeedPeers;->seedAddrs:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/google/bitcoin/net/discovery/SeedPeers;->convertAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/SeedPeers;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    aput-object v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object v0
.end method

.method private convertAddress(I)Ljava/net/InetAddress;
    .locals 3
    .param p1, "seed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 83
    .local v0, "v4addr":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 84
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 85
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 86
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 87
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method private nextPeer()Ljava/net/InetSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget v0, p0, Lcom/google/bitcoin/net/discovery/SeedPeers;->pnseedIndex:I

    sget-object v1, Lcom/google/bitcoin/net/discovery/SeedPeers;->seedAddrs:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/google/bitcoin/net/discovery/SeedPeers;->seedAddrs:[I

    iget v2, p0, Lcom/google/bitcoin/net/discovery/SeedPeers;->pnseedIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/bitcoin/net/discovery/SeedPeers;->pnseedIndex:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/bitcoin/net/discovery/SeedPeers;->convertAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/net/discovery/SeedPeers;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method


# virtual methods
.method public getPeer()Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/net/discovery/SeedPeers;->nextPeer()Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 2
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/google/bitcoin/net/discovery/SeedPeers;->allPeers()[Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
