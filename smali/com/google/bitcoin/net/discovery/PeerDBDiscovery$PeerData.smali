.class Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
.super Ljava/lang/Object;
.source "PeerDBDiscovery.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeerData"
.end annotation


# instance fields
.field address:Lcom/google/bitcoin/core/PeerAddress;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field lastConnected:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

.field triedSinceLastConnection:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field volatile vTimeLastHeard:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Lcom/google/bitcoin/core/PeerAddress;)V
    .locals 4
    .param p2, "address"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->vTimeLastHeard:J

    .line 81
    iput-wide v2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->lastConnected:J

    .line 82
    iput-wide v2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    .line 84
    iput-object p2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    return-void
.end method

.method constructor <init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;Ljava/io/InputStream;)V
    .locals 7
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 86
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->vTimeLastHeard:J

    .line 81
    iput-wide v5, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->lastConnected:J

    .line 82
    iput-wide v5, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    .line 87
    const/16 v1, 0x36

    new-array v0, v1, [B

    .line 88
    .local v0, "peerAddress":[B
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    array-length v3, v0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 89
    new-instance v1, Lcom/google/bitcoin/core/PeerAddress;

    invoke-static {p1}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->access$000(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v3

    const v4, 0x11171

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V

    iput-object v1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    .line 90
    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->readInt64([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->vTimeLastHeard:J

    .line 91
    const/16 v1, 0x26

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->readInt64([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->lastConnected:J

    .line 92
    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Utils;->readInt64([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    .line 93
    return-void

    :cond_0
    move v1, v2

    .line 88
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized connected()V
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    .line 105
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->lastConnected:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnected()V
    .locals 4

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-static {v2}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->access$100(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isBad()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x5

    .line 113
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->lastConnected:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->lastConnected:J

    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->vTimeLastHeard:J

    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized write(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/PeerAddress;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 97
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->vTimeLastHeard:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 98
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->lastConnected:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 99
    iget-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    invoke-static {v0, v1, p1}, Lcom/google/bitcoin/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 100
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->triedSinceLastConnection:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
