.class Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;
.super Ljava/lang/Object;
.source "ConnectionCacheImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/connections/ConnectionCacheImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseIdleConnectionCheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;


# direct methods
.method private constructor <init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;->this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;Lcom/subgraph/orchid/connections/ConnectionCacheImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/subgraph/orchid/connections/ConnectionCacheImpl;
    .param p2, "x1"    # Lcom/subgraph/orchid/connections/ConnectionCacheImpl$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;-><init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    iget-object v3, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$CloseIdleConnectionCheckTask;->this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-static {v3}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->access$300(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 56
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/connections/ConnectionImpl;

    .line 59
    .local v0, "c":Lcom/subgraph/orchid/connections/ConnectionImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->idleCloseCheck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "c":Lcom/subgraph/orchid/connections/ConnectionImpl;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 63
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/subgraph/orchid/connections/ConnectionImpl;>;"
    :cond_1
    return-void
.end method
