.class Lcom/google/bitcoin/core/PeerGroup$10;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup;->setupPingingForNewPeer(Lcom/google/bitcoin/core/Peer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstRun:Z

.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;

.field final synthetic val$peer:Lcom/google/bitcoin/core/Peer;

.field final synthetic val$pingRunnable:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/Peer;[Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$10;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    iput-object p2, p0, Lcom/google/bitcoin/core/PeerGroup$10;->val$peer:Lcom/google/bitcoin/core/Peer;

    iput-object p3, p0, Lcom/google/bitcoin/core/PeerGroup$10;->val$pingRunnable:[Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/PeerGroup$10;->firstRun:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1116
    iget-boolean v4, p0, Lcom/google/bitcoin/core/PeerGroup$10;->firstRun:Z

    if-eqz v4, :cond_1

    .line 1117
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/bitcoin/core/PeerGroup$10;->firstRun:Z

    .line 1119
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup$10;->val$peer:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Peer;->ping()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    sget-object v5, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v4, p0, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/bitcoin/core/PeerGroup;->access$300()Lorg/slf4j/Logger;

    move-result-object v4

    const-string v5, "{}: Exception whilst trying to ping peer: {}"

    iget-object v6, p0, Lcom/google/bitcoin/core/PeerGroup$10;->val$peer:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup$10;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v4}, Lcom/google/bitcoin/core/PeerGroup;->getPingIntervalMsec()J

    move-result-wide v1

    .line 1128
    .local v1, "interval":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 1130
    new-instance v3, Lcom/google/bitcoin/core/PeerGroup$10$1;

    invoke-direct {v3, p0}, Lcom/google/bitcoin/core/PeerGroup$10$1;-><init>(Lcom/google/bitcoin/core/PeerGroup$10;)V

    .line 1143
    .local v3, "task":Ljava/util/TimerTask;
    :try_start_1
    iget-object v4, p0, Lcom/google/bitcoin/core/PeerGroup$10;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v4}, Lcom/google/bitcoin/core/PeerGroup;->access$1200(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1144
    :catch_1
    move-exception v4

    goto :goto_0
.end method
