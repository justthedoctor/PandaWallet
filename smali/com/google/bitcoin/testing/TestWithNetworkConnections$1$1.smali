.class Lcom/google/bitcoin/testing/TestWithNetworkConnections$1$1;
.super Lcom/google/bitcoin/testing/InboundMessageQueuer;
.source "TestWithNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;->getNewParser(Ljava/net/InetAddress;I)Lcom/google/bitcoin/net/StreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p2, "x0"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1$1;->this$1:Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;

    invoke-direct {p0, p2}, Lcom/google/bitcoin/testing/InboundMessageQueuer;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public connectionOpened()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1$1;->this$1:Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;

    iget-object v0, v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;->this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;

    iget-object v0, v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->newPeerWriteTargetQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method
