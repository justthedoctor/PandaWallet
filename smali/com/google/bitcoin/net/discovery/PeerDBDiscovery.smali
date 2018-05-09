.class public Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;
.super Ljava/lang/Object;
.source "PeerDBDiscovery.java"

# interfaces
.implements Lcom/google/bitcoin/net/discovery/PeerDiscovery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;,
        Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    }
.end annotation


# static fields
.field private static final ADDRESSES_RETURNED:I = 0x1000

.field private static final MAX_ADDRESSES_FACTOR:I = 0x8

.field static final MAX_SET_SIZE:I = 0x80

.field static final SETS_PER_SOURCE:I = 0x10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TOTAL_SETS:I = 0x100
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field addressBuckets:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field addressToSetMap:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final db:Ljava/io/File;

.field private params:Lcom/google/bitcoin/core/NetworkParameters;

.field private randomKey:J

.field private rotatingRandomKey:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "db"    # Ljava/io/File;
    .param p3, "group"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    const/16 v7, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressBuckets:Ljava/util/List;

    .line 151
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressToSetMap:Ljava/util/Map;

    .line 154
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->rotatingRandomKey:J

    .line 237
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 238
    iput-object p2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->db:Ljava/io/File;

    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 240
    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressBuckets:Ljava/util/List;

    new-instance v5, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;

    invoke-direct {v5, p0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;-><init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 243
    .local v0, "doInit":Z
    :goto_1
    if-nez v0, :cond_1

    .line 244
    invoke-direct {p0, p2}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->maybeLoadFromFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 245
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 246
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->randomKey:J

    .line 248
    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->listenForPeers(Lcom/google/bitcoin/core/PeerGroup;)V

    .line 249
    invoke-virtual {p3, p0}, Lcom/google/bitcoin/core/PeerGroup;->addPeerDiscovery(Lcom/google/bitcoin/net/discovery/PeerDiscovery;)V

    .line 250
    return-void

    .end local v0    # "doInit":Z
    :cond_3
    move v0, v3

    .line 242
    goto :goto_1

    .restart local v0    # "doInit":Z
    :cond_4
    move v0, v3

    .line 244
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->rotatingRandomKey:J

    return-wide v0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;
    .param p1, "x1"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p2, "x2"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addAddress(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addAddress(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    .locals 7
    .param p1, "address"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p2, "from"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressToSetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .line 193
    .local v1, "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .end local v1    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    invoke-direct {v1, p0, p1}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;-><init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Lcom/google/bitcoin/core/PeerAddress;)V

    .line 195
    .restart local v1    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressToSetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    new-instance v3, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    invoke-direct {v3}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 204
    .local v3, "setWithinGroupSelector":Ljava/io/ByteArrayOutputStream;
    iget-wide v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->randomKey:J

    invoke-static {v4, v5, v3}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 205
    invoke-direct {p0, p1, v3}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->writeAddressGroup(Lcom/google/bitcoin/core/PeerAddress;Ljava/io/OutputStream;)V

    .line 207
    new-instance v2, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;

    invoke-direct {v2}, Lcom/google/bitcoin/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 208
    .local v2, "setSelector":Ljava/io/ByteArrayOutputStream;
    iget-wide v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->randomKey:J

    invoke-static {v4, v5, v2}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 209
    invoke-direct {p0, p2, v2}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->writeAddressGroup(Lcom/google/bitcoin/core/PeerAddress;Ljava/io/OutputStream;)V

    .line 211
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/bitcoin/core/Sha256Hash;->create([B)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    invoke-static {v4, v5, v2}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 213
    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressBuckets:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/bitcoin/core/Sha256Hash;->create([B)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit16 v5, v5, 0x100

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;

    invoke-virtual {v4, v1}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->add(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v2    # "setSelector":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "setWithinGroupSelector":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->vTimeLastHeard:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v1

    .line 230
    :goto_1
    monitor-exit p0

    return-object v4

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 220
    .restart local v1    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getPort()I

    move-result v4

    iget-object v5, v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/PeerAddress;->getPort()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 221
    invoke-virtual {p2}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    iput-object p1, v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    .line 227
    :cond_1
    iget-object v4, v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    iget-object v5, v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/PeerAddress;->getServices()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getServices()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/PeerAddress;->setServices(Ljava/math/BigInteger;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 224
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private maybeLoadFromFile(Ljava/io/File;)Z
    .locals 12
    .param p1, "f"    # Ljava/io/File;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 318
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 319
    .local v6, "s":Ljava/io/InputStream;
    const/16 v8, 0xc

    new-array v7, v8, [B

    .line 320
    .local v7, "versionAndRandomKeyBytes":[B
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_0

    .line 321
    const/4 v8, 0x0

    .line 341
    .end local v6    # "s":Ljava/io/InputStream;
    .end local v7    # "versionAndRandomKeyBytes":[B
    :goto_0
    return v8

    .line 322
    .restart local v6    # "s":Ljava/io/InputStream;
    .restart local v7    # "versionAndRandomKeyBytes":[B
    :cond_0
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 323
    const/4 v8, 0x0

    goto :goto_0

    .line 324
    :cond_1
    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/bitcoin/core/Utils;->readInt64([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->randomKey:J

    .line 325
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v8, 0x100

    if-ge v3, v8, :cond_5

    .line 326
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 327
    .local v0, "addressCountBytes":[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 328
    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/google/bitcoin/core/Utils;->readUint32([BI)J

    move-result-wide v8

    long-to-int v1, v8

    .line 329
    .local v1, "addresses":I
    const/16 v8, 0x80

    if-gt v1, v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 330
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, v1, :cond_4

    .line 331
    new-instance v5, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    invoke-direct {v5, p0, v6}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;-><init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Ljava/io/InputStream;)V

    .line 332
    .local v5, "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    iget-object v8, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressBuckets:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;

    invoke-virtual {v8, v5}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->add(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;)Z

    .line 333
    iget-object v8, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressToSetMap:Ljava/util/Map;

    iget-object v9, v5, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v9}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 327
    .end local v1    # "addresses":I
    .end local v4    # "j":I
    .end local v5    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 329
    .restart local v1    # "addresses":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 325
    .restart local v4    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    .end local v0    # "addressCountBytes":[B
    .end local v1    # "addresses":I
    .end local v4    # "j":I
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 337
    .end local v3    # "i":I
    .end local v6    # "s":Ljava/io/InputStream;
    .end local v7    # "versionAndRandomKeyBytes":[B
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v8, 0x0

    goto :goto_0

    .line 339
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 340
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->log:Lorg/slf4j/Logger;

    const-string v9, "Error reading PeerDB from file"

    invoke-interface {v8, v9, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private declared-synchronized saveToFile(Ljava/io/File;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 348
    .local v3, "s":Ljava/io/OutputStream;
    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v3}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 349
    iget-wide v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->randomKey:J

    invoke-static {v4, v5, v3}, Lcom/google/bitcoin/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x100

    if-ge v0, v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressBuckets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;

    invoke-virtual {v4}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, v3}, Lcom/google/bitcoin/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 352
    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressBuckets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;

    invoke-virtual {v4}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .line 353
    .local v2, "peerData":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    invoke-virtual {v2, v3}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 347
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "peerData":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    .end local v3    # "s":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 350
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "s":Ljava/io/OutputStream;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private writeAddressGroup(Lcom/google/bitcoin/core/PeerAddress;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "address"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 167
    .local v0, "addressBytes":[B
    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 169
    aget-byte v1, v0, v3

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    if-eq v1, v7, :cond_0

    aget-byte v1, v0, v3

    if-eq v1, v5, :cond_0

    aget-byte v1, v0, v3

    if-eq v1, v4, :cond_0

    .line 174
    aget-byte v1, v0, v3

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 188
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 179
    :cond_1
    aget-byte v1, v0, v3

    const/16 v2, 0xfd

    if-ne v1, v2, :cond_2

    aget-byte v1, v0, v4

    const/16 v2, 0x87

    if-ne v1, v2, :cond_2

    aget-byte v1, v0, v5

    const/16 v2, 0xdb

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_2

    aget-byte v1, v0, v6

    const/16 v2, 0xeb

    if-ne v1, v2, :cond_2

    aget-byte v1, v0, v7

    const/16 v2, 0x43

    if-ne v1, v2, :cond_2

    .line 181
    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 183
    :cond_2
    aget-byte v1, v0, v3

    const/16 v2, 0x14

    if-ne v1, v2, :cond_3

    aget-byte v1, v0, v4

    if-ne v1, v4, :cond_3

    aget-byte v1, v0, v5

    if-ne v1, v6, :cond_3

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_3

    .line 184
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 8
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 289
    monitor-enter p0

    const/16 v6, 0x1000

    :try_start_0
    iget-object v7, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressToSetMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 290
    .local v1, "addressesToReturn":I
    new-array v0, v1, [Ljava/net/InetSocketAddress;

    .line 292
    .local v0, "addresses":[Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->addressToSetMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v5, "peerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;>;"
    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 294
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 295
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 296
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 304
    :cond_0
    monitor-exit p0

    return-object v0

    .line 298
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .line 299
    .local v4, "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    :goto_1
    invoke-virtual {v4}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->isBad()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    check-cast v4, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .restart local v4    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    goto :goto_1

    .line 301
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    iget-object v6, v4, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    aput-object v6, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "addresses":[Ljava/net/InetSocketAddress;
    .end local v1    # "addressesToReturn":I
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;>;"
    .end local v4    # "peer":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    .end local v5    # "peerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public listenForPeers(Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 257
    new-instance v0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$1;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$1;-><init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)V

    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/PeerGroup;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 285
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->db:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->saveToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to save Peer set to file"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
