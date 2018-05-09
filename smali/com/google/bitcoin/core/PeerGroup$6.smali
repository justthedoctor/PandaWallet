.class Lcom/google/bitcoin/core/PeerGroup$6;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$6;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 405
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$6;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerGroup;->connectToAnyPeer()V
    :try_end_0
    .catch Lcom/google/bitcoin/net/discovery/PeerDiscoveryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$6;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerGroup;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$6;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v1}, Lcom/google/bitcoin/core/PeerGroup;->access$1000(Lcom/google/bitcoin/core/PeerGroup;)I

    move-result v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup$6;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/PeerGroup;->getMaxConnections()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 410
    :cond_1
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$6;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v1}, Lcom/google/bitcoin/core/PeerGroup;->access$900(Lcom/google/bitcoin/core/PeerGroup;)Lcom/google/bitcoin/utils/ExponentialBackoff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/utils/ExponentialBackoff;->trackFailure()V

    goto :goto_0
.end method
