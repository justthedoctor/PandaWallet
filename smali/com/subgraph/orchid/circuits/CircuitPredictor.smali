.class public Lcom/subgraph/orchid/circuits/CircuitPredictor;
.super Ljava/lang/Object;
.source "CircuitPredictor.java"

# interfaces
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;


# static fields
.field private static final INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

.field private static final TIMEOUT_MS:J = 0x36ee80L


# instance fields
.field private final portsSeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    .line 27
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addExitPortRequest(I)V

    .line 28
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addInternalRequest()V

    .line 29
    return-void
.end method

.method private isEntryExpired(Ljava/util/Map$Entry;J)Z
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeExpiredPorts()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 48
    .local v1, "now":J
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {p0, v3, v1, v2}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->isEntryExpired(Ljava/util/Map$Entry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method addExitPortRequest(I)V
    .locals 5
    .param p1, "port"    # I

    .prologue
    .line 32
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addInternalRequest()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->addExitPortRequest(I)V

    .line 39
    return-void
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 10
    .param p1, "renderer"    # Lcom/subgraph/orchid/dashboard/DashboardRenderer;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_0

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v7, "[Predicted Ports] "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 88
    .local v6, "port":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 89
    iget-object v7, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 90
    .local v1, "lastSeen":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    .local v4, "now":J
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v2, v4, v7

    .line 93
    .local v2, "ms":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " (last seen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2, v3, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minutes ago)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 95
    .end local v2    # "ms":J
    .end local v4    # "now":J
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 97
    .end local v1    # "lastSeen":Ljava/lang/Long;
    .end local v6    # "port":I
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method getPredictedPortTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/PredictedPortTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/PredictedPortTarget;>;"
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->getPredictedPorts()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 75
    .local v1, "p":I
    new-instance v3, Lcom/subgraph/orchid/circuits/PredictedPortTarget;

    invoke-direct {v3, v1}, Lcom/subgraph/orchid/circuits/PredictedPortTarget;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v1    # "p":I
    :cond_0
    return-object v2
.end method

.method getPredictedPorts()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    monitor-enter v2

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->removeExpiredPorts()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v2

    return-object v0

    .line 69
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isInternalPredicted()Z
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    monitor-enter v1

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitPredictor;->removeExpiredPorts()V

    .line 59
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitPredictor;->portsSeen:Ljava/util/Map;

    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitPredictor;->INTERNAL_CIRCUIT_PORT_VALUE:Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
