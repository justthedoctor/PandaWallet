.class Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "TestWithNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/testing/TestWithNetworkConnections;->connect(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/VersionMessage;)Lcom/google/bitcoin/testing/InboundMessageQueuer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;

.field final synthetic val$doneConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$thisThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;->this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;

    iput-object p2, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;->val$doneConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;->val$thisThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 2
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;->val$doneConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;->val$doneConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$2;->val$thisThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 154
    :cond_0
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
