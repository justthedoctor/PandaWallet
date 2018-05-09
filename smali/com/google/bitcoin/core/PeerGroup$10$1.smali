.class Lcom/google/bitcoin/core/PeerGroup$10$1;
.super Ljava/util/TimerTask;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/bitcoin/core/PeerGroup$10;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup$10;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$10$1;->this$1:Lcom/google/bitcoin/core/PeerGroup$10;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$10$1;->this$1:Lcom/google/bitcoin/core/PeerGroup$10;

    iget-object v1, v1, Lcom/google/bitcoin/core/PeerGroup$10;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v1}, Lcom/google/bitcoin/core/PeerGroup;->access$1100(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup$10$1;->this$1:Lcom/google/bitcoin/core/PeerGroup$10;

    iget-object v2, v2, Lcom/google/bitcoin/core/PeerGroup$10;->val$peer:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$10$1;->this$1:Lcom/google/bitcoin/core/PeerGroup$10;

    iget-object v1, v1, Lcom/google/bitcoin/core/PeerGroup$10;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerGroup;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$10$1;->this$1:Lcom/google/bitcoin/core/PeerGroup$10;

    iget-object v1, v1, Lcom/google/bitcoin/core/PeerGroup$10;->val$peer:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Peer;->ping()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup$10$1;->this$1:Lcom/google/bitcoin/core/PeerGroup$10;

    iget-object v2, v2, Lcom/google/bitcoin/core/PeerGroup$10;->val$pingRunnable:[Ljava/lang/Runnable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/bitcoin/core/PeerGroup;->access$300()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "{}: Exception whilst trying to ping peer: {}"

    iget-object v3, p0, Lcom/google/bitcoin/core/PeerGroup$10$1;->this$1:Lcom/google/bitcoin/core/PeerGroup$10;

    iget-object v3, v3, Lcom/google/bitcoin/core/PeerGroup$10;->val$peer:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
