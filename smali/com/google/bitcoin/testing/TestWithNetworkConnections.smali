.class public Lcom/google/bitcoin/testing/TestWithNetworkConnections;
.super Ljava/lang/Object;
.source "TestWithNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;
    }
.end annotation


# static fields
.field public static final PEER_SERVERS:I = 0x5


# instance fields
.field protected address:Lcom/google/bitcoin/core/Address;

.field protected blockChain:Lcom/google/bitcoin/core/BlockChain;

.field protected blockStore:Lcom/google/bitcoin/store/BlockStore;

.field private final channels:Lcom/google/bitcoin/net/ClientConnectionManager;

.field private final clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

.field protected key:Lcom/google/bitcoin/core/ECKey;

.field protected final newPeerWriteTargetQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/bitcoin/testing/InboundMessageQueuer;",
            ">;"
        }
    .end annotation
.end field

.field private peerServers:[Lcom/google/bitcoin/net/NioServer;

.field protected socketAddress:Ljava/net/SocketAddress;

.field protected unitTestParams:Lcom/google/bitcoin/core/NetworkParameters;

.field protected wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;)V
    .locals 1
    .param p1, "clientType"    # Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/bitcoin/net/NioServer;

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->peerServers:[Lcom/google/bitcoin/net/NioServer;

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->newPeerWriteTargetQueue:Ljava/util/concurrent/BlockingQueue;

    .line 68
    iput-object p1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    .line 69
    sget-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-ne p1, v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/bitcoin/net/NioClientManager;

    invoke-direct {v0}, Lcom/google/bitcoin/net/NioClientManager;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-ne p1, v0, :cond_1

    .line 72
    new-instance v0, Lcom/google/bitcoin/net/BlockingClientManager;

    invoke-direct {v0}, Lcom/google/bitcoin/net/BlockingClientManager;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    goto :goto_0
.end method

.method private inboundPongAndWait(Lcom/google/bitcoin/testing/InboundMessageQueuer;J)V
    .locals 4
    .param p1, "p"    # Lcom/google/bitcoin/testing/InboundMessageQueuer;
    .param p2, "nonce"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 204
    .local v1, "pongReceivedFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    new-instance v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;-><init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections;JLcom/google/common/util/concurrent/SettableFuture;)V

    .line 214
    .local v0, "listener":Lcom/google/bitcoin/core/PeerEventListener;
    iget-object v2, p1, Lcom/google/bitcoin/testing/InboundMessageQueuer;->peer:Lcom/google/bitcoin/core/Peer;

    sget-object v3, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0, v3}, Lcom/google/bitcoin/core/Peer;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    .line 215
    new-instance v2, Lcom/google/bitcoin/core/Pong;

    invoke-direct {v2, p2, p3}, Lcom/google/bitcoin/core/Pong;-><init>(J)V

    invoke-virtual {p0, p1, v2}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->inbound(Lcom/google/bitcoin/testing/InboundMessageQueuer;Lcom/google/bitcoin/core/Message;)V

    .line 216
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    .line 217
    iget-object v2, p1, Lcom/google/bitcoin/testing/InboundMessageQueuer;->peer:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v2, v0}, Lcom/google/bitcoin/core/Peer;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    .line 218
    return-void
.end method

.method private outboundPingAndWait(Lcom/google/bitcoin/testing/InboundMessageQueuer;J)V
    .locals 3
    .param p1, "p"    # Lcom/google/bitcoin/testing/InboundMessageQueuer;
    .param p2, "nonce"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 195
    .local v0, "pingReceivedFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    iget-object v1, p1, Lcom/google/bitcoin/testing/InboundMessageQueuer;->mapPingFutures:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p1, Lcom/google/bitcoin/testing/InboundMessageQueuer;->peer:Lcom/google/bitcoin/core/Peer;

    new-instance v2, Lcom/google/bitcoin/core/Ping;

    invoke-direct {v2, p2, p3}, Lcom/google/bitcoin/core/Ping;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Peer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 197
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    .line 198
    iget-object v1, p1, Lcom/google/bitcoin/testing/InboundMessageQueuer;->mapPingFutures:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method


# virtual methods
.method protected closePeer(Lcom/google/bitcoin/core/Peer;)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Peer;->close()V

    .line 186
    return-void
.end method

.method protected connect(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/VersionMessage;)Lcom/google/bitcoin/testing/InboundMessageQueuer;
    .locals 9
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "versionMessage"    # Lcom/google/bitcoin/core/VersionMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    const/16 v4, 0x7d0

    .line 145
    invoke-virtual {p2}, Lcom/google/bitcoin/core/VersionMessage;->hasBlockChain()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 146
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 147
    .local v6, "doneConnecting":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 148
    .local v7, "thisThread":Ljava/lang/Thread;
    new-instance v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;

    invoke-direct {v0, p0, v6, v7}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;-><init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Thread;)V

    invoke-virtual {p1, v0}, Lcom/google/bitcoin/core/Peer;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 157
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-ne v0, v1, :cond_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    invoke-direct {v1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, p1}, Lcom/google/bitcoin/net/ClientConnectionManager;->openConnection(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->newPeerWriteTargetQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/testing/InboundMessageQueuer;

    .line 167
    .local v8, "writeTarget":Lcom/google/bitcoin/testing/InboundMessageQueuer;
    iput-object p1, v8, Lcom/google/bitcoin/testing/InboundMessageQueuer;->peer:Lcom/google/bitcoin/core/Peer;

    .line 169
    invoke-virtual {v8, p2}, Lcom/google/bitcoin/testing/InboundMessageQueuer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 170
    new-instance v0, Lcom/google/bitcoin/core/VersionAck;

    invoke-direct {v0}, Lcom/google/bitcoin/core/VersionAck;-><init>()V

    invoke-virtual {v8, v0}, Lcom/google/bitcoin/testing/InboundMessageQueuer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 172
    :try_start_0
    invoke-virtual {v8}, Lcom/google/bitcoin/testing/InboundMessageQueuer;->nextMessageBlocking()Lcom/google/bitcoin/core/Message;

    move-result-object v0

    instance-of v0, v0, Lcom/google/bitcoin/core/VersionMessage;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    invoke-virtual {v8}, Lcom/google/bitcoin/testing/InboundMessageQueuer;->nextMessageBlocking()Lcom/google/bitcoin/core/Message;

    move-result-object v0

    instance-of v0, v0, Lcom/google/bitcoin/core/VersionAck;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 174
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :goto_1
    return-object v8

    .line 159
    .end local v8    # "writeTarget":Lcom/google/bitcoin/testing/InboundMessageQueuer;
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-ne v0, v1, :cond_2

    .line 160
    new-instance v0, Lcom/google/bitcoin/net/NioClient;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    invoke-direct {v1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, p1, v3}, Lcom/google/bitcoin/net/NioClient;-><init>(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;I)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-ne v0, v1, :cond_3

    .line 162
    new-instance v0, Lcom/google/bitcoin/net/BlockingClient;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    invoke-direct {v1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/bitcoin/net/BlockingClient;-><init>(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;ILjavax/net/SocketFactory;Ljava/util/Set;)V

    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 176
    .restart local v8    # "writeTarget":Lcom/google/bitcoin/testing/InboundMessageQueuer;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected inbound(Lcom/google/bitcoin/testing/InboundMessageQueuer;Lcom/google/bitcoin/core/Message;)V
    .locals 0
    .param p1, "peerChannel"    # Lcom/google/bitcoin/testing/InboundMessageQueuer;
    .param p2, "message"    # Lcom/google/bitcoin/core/Message;

    .prologue
    .line 189
    invoke-virtual {p1, p2}, Lcom/google/bitcoin/testing/InboundMessageQueuer;->sendMessage(Lcom/google/bitcoin/core/Message;)V

    .line 190
    return-void
.end method

.method protected outbound(Lcom/google/bitcoin/testing/InboundMessageQueuer;)Lcom/google/bitcoin/core/Message;
    .locals 1
    .param p1, "p1"    # Lcom/google/bitcoin/testing/InboundMessageQueuer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->pingAndWait(Lcom/google/bitcoin/testing/InboundMessageQueuer;)V

    .line 230
    invoke-virtual {p1}, Lcom/google/bitcoin/testing/InboundMessageQueuer;->nextMessage()Lcom/google/bitcoin/core/Message;

    move-result-object v0

    return-object v0
.end method

.method protected peerOf(Lcom/google/bitcoin/testing/InboundMessageQueuer;)Lcom/google/bitcoin/core/Peer;
    .locals 1
    .param p1, "ch"    # Lcom/google/bitcoin/testing/InboundMessageQueuer;

    .prologue
    .line 238
    iget-object v0, p1, Lcom/google/bitcoin/testing/InboundMessageQueuer;->peer:Lcom/google/bitcoin/core/Peer;

    return-object v0
.end method

.method protected pingAndWait(Lcom/google/bitcoin/testing/InboundMessageQueuer;)V
    .locals 6
    .param p1, "p"    # Lcom/google/bitcoin/testing/InboundMessageQueuer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 224
    .local v0, "nonce":J
    invoke-direct {p0, p1, v0, v1}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->inboundPongAndWait(Lcom/google/bitcoin/testing/InboundMessageQueuer;J)V

    .line 225
    invoke-direct {p0, p1, v0, v1}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->outboundPingAndWait(Lcom/google/bitcoin/testing/InboundMessageQueuer;J)V

    .line 226
    return-void
.end method

.method public setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/google/bitcoin/store/MemoryBlockStore;

    invoke-static {}, Lcom/google/bitcoin/params/UnitTestParams;->get()Lcom/google/bitcoin/params/UnitTestParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/MemoryBlockStore;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->setUp(Lcom/google/bitcoin/store/BlockStore;)V

    .line 79
    return-void
.end method

.method public setUp(Lcom/google/bitcoin/store/BlockStore;)V
    .locals 3
    .param p1, "blockStore"    # Lcom/google/bitcoin/store/BlockStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/google/bitcoin/utils/BriefLogFormatter;->init()V

    .line 84
    invoke-static {}, Lcom/google/bitcoin/params/UnitTestParams;->get()Lcom/google/bitcoin/params/UnitTestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->unitTestParams:Lcom/google/bitcoin/core/NetworkParameters;

    .line 85
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->DEFAULT_FEE_PER_KB:Ljava/math/BigInteger;

    .line 86
    iput-object p1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->blockStore:Lcom/google/bitcoin/store/BlockStore;

    .line 87
    new-instance v0, Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->unitTestParams:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 88
    new-instance v0, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v0}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->key:Lcom/google/bitcoin/core/ECKey;

    .line 89
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->key:Lcom/google/bitcoin/core/ECKey;

    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->unitTestParams:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->address:Lcom/google/bitcoin/core/Address;

    .line 90
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->key:Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->addKey(Lcom/google/bitcoin/core/ECKey;)Z

    .line 91
    new-instance v0, Lcom/google/bitcoin/core/BlockChain;

    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->unitTestParams:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v2, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/bitcoin/core/BlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/store/BlockStore;)V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->blockChain:Lcom/google/bitcoin/core/BlockChain;

    .line 93
    invoke-virtual {p0}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->startPeerServers()V

    .line 94
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->clientType:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    if-ne v0, v1, :cond_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-interface {v0}, Lcom/google/bitcoin/net/ClientConnectionManager;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 96
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->channels:Lcom/google/bitcoin/net/ClientConnectionManager;

    invoke-interface {v0}, Lcom/google/bitcoin/net/ClientConnectionManager;->awaitRunning()V

    .line 99
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "127.0.0.1"

    const/16 v2, 0x457

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->socketAddress:Ljava/net/SocketAddress;

    .line 100
    return-void
.end method

.method protected startPeerServer(I)V
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->peerServers:[Lcom/google/bitcoin/net/NioServer;

    new-instance v1, Lcom/google/bitcoin/net/NioServer;

    new-instance v2, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;

    invoke-direct {v2, p0}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;-><init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections;)V

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "127.0.0.1"

    add-int/lit16 v5, p1, 0x7d0

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/net/NioServer;-><init>(Lcom/google/bitcoin/net/StreamParserFactory;Ljava/net/InetSocketAddress;)V

    aput-object v1, v0, p1

    .line 125
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->peerServers:[Lcom/google/bitcoin/net/NioServer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 126
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->peerServers:[Lcom/google/bitcoin/net/NioServer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->awaitRunning()V

    .line 127
    return-void
.end method

.method protected startPeerServers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->startPeerServer(I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method protected stopPeerServer(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->peerServers:[Lcom/google/bitcoin/net/NioServer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 141
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->peerServers:[Lcom/google/bitcoin/net/NioServer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->awaitTerminated()V

    .line 142
    return-void
.end method

.method protected stopPeerServers()V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->stopPeerServer(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->DEFAULT_FEE_PER_KB:Ljava/math/BigInteger;

    .line 131
    invoke-virtual {p0}, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->stopPeerServers()V

    .line 132
    return-void
.end method

.method protected waitForOutbound(Lcom/google/bitcoin/testing/InboundMessageQueuer;)Ljava/lang/Object;
    .locals 1
    .param p1, "ch"    # Lcom/google/bitcoin/testing/InboundMessageQueuer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/google/bitcoin/testing/InboundMessageQueuer;->nextMessageBlocking()Lcom/google/bitcoin/core/Message;

    move-result-object v0

    return-object v0
.end method
