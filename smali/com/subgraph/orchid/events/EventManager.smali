.class public Lcom/subgraph/orchid/events/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# instance fields
.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/events/EventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/events/EventManager;->handlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/subgraph/orchid/events/EventHandler;)V
    .locals 1
    .param p1, "listener"    # Lcom/subgraph/orchid/events/EventHandler;

    .prologue
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/events/EventManager;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fireEvent(Lcom/subgraph/orchid/events/Event;)V
    .locals 6
    .param p1, "event"    # Lcom/subgraph/orchid/events/Event;

    .prologue
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v5, p0, Lcom/subgraph/orchid/events/EventManager;->handlers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lcom/subgraph/orchid/events/EventHandler;

    .line 26
    .local v2, "handlersCopy":[Lcom/subgraph/orchid/events/EventHandler;
    iget-object v5, p0, Lcom/subgraph/orchid/events/EventManager;->handlers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    move-object v0, v2

    .local v0, "arr$":[Lcom/subgraph/orchid/events/EventHandler;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 29
    .local v1, "handler":Lcom/subgraph/orchid/events/EventHandler;
    invoke-interface {v1, p1}, Lcom/subgraph/orchid/events/EventHandler;->handleEvent(Lcom/subgraph/orchid/events/Event;)V

    .line 28
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "arr$":[Lcom/subgraph/orchid/events/EventHandler;
    .end local v1    # "handler":Lcom/subgraph/orchid/events/EventHandler;
    .end local v2    # "handlersCopy":[Lcom/subgraph/orchid/events/EventHandler;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 32
    .restart local v0    # "arr$":[Lcom/subgraph/orchid/events/EventHandler;
    .restart local v2    # "handlersCopy":[Lcom/subgraph/orchid/events/EventHandler;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/subgraph/orchid/events/EventHandler;)V
    .locals 1
    .param p1, "listener"    # Lcom/subgraph/orchid/events/EventHandler;

    .prologue
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/events/EventManager;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
