.class public Lcom/google/bitcoin/core/TransactionBroadcast;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/TransactionBroadcast$1;,
        Lcom/google/bitcoin/core/TransactionBroadcast$ConfidenceChange;,
        Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field static random:Ljava/util/Random;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private minConnections:I

.field private numToBroadcastTo:I

.field private numWaitingFor:I

.field private final peerGroup:Lcom/google/bitcoin/core/PeerGroup;

.field private pinnedTx:Lcom/google/bitcoin/core/Transaction;

.field private final tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/bitcoin/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/TransactionBroadcast;->log:Lorg/slf4j/Logger;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/bitcoin/core/TransactionBroadcast;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/Transaction;)V
    .locals 2
    .param p1, "peerGroup"    # Lcom/google/bitcoin/core/PeerGroup;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 53
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    .line 54
    iput-object p2, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerGroup;->getMinBroadcastConnections()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->minConnections:I

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/PeerGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->pinnedTx:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/bitcoin/core/TransactionBroadcast;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;
    .param p1, "x1"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->pinnedTx:Lcom/google/bitcoin/core/Transaction;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->tx:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/bitcoin/core/TransactionBroadcast;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->minConnections:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/bitcoin/core/TransactionBroadcast;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->numToBroadcastTo:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/bitcoin/core/TransactionBroadcast;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->numToBroadcastTo:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/bitcoin/core/TransactionBroadcast;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->numWaitingFor:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/bitcoin/core/TransactionBroadcast;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->numWaitingFor:I

    return p1
.end method

.method static synthetic access$800()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/bitcoin/core/TransactionBroadcast;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/bitcoin/core/TransactionBroadcast;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/TransactionBroadcast;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public broadcast()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v1, Lcom/google/bitcoin/core/TransactionBroadcast;->log:Lorg/slf4j/Logger;

    const-string v2, "Waiting for {} peers required for broadcast ..."

    iget v3, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->minConnections:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->peerGroup:Lcom/google/bitcoin/core/PeerGroup;

    iget v2, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->minConnections:I

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/PeerGroup;->waitForPeers(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 69
    .local v0, "peerAvailabilityFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/bitcoin/core/PeerGroup;>;"
    new-instance v1, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/bitcoin/core/TransactionBroadcast$EnoughAvailablePeers;-><init>(Lcom/google/bitcoin/core/TransactionBroadcast;Lcom/google/bitcoin/core/TransactionBroadcast$1;)V

    sget-object v2, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 70
    iget-object v1, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v1
.end method

.method public future()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public setMinConnections(I)V
    .locals 0
    .param p1, "minConnections"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/google/bitcoin/core/TransactionBroadcast;->minConnections:I

    .line 64
    return-void
.end method
