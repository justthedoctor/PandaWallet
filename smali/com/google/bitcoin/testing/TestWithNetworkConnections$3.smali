.class Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "TestWithNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/testing/TestWithNetworkConnections;->inboundPongAndWait(Lcom/google/bitcoin/testing/InboundMessageQueuer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;

.field final synthetic val$nonce:J

.field final synthetic val$pongReceivedFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections;JLcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;->this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;

    iput-wide p2, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;->val$nonce:J

    iput-object p4, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;->val$pongReceivedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreMessageReceived(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Message;)Lcom/google/bitcoin/core/Message;
    .locals 6
    .param p1, "p"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "m"    # Lcom/google/bitcoin/core/Message;

    .prologue
    const/4 v1, 0x0

    .line 207
    instance-of v0, p2, Lcom/google/bitcoin/core/Pong;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/bitcoin/core/Pong;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Pong;->getNonce()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;->val$nonce:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$3;->val$pongReceivedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-object p2, v1

    .line 211
    .end local p2    # "m":Lcom/google/bitcoin/core/Message;
    :cond_0
    return-object p2
.end method
