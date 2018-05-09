.class public Lcom/subgraph/orchid/circuits/CircuitStatus;
.super Ljava/lang/Object;
.source "CircuitStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
    }
.end annotation


# instance fields
.field private currentStreamId:I

.field private volatile state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field private streamIdLock:Ljava/lang/Object;

.field private timestampCreated:J

.field private timestampDirty:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->streamIdLock:Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 25
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->initializeCurrentStreamId()V

    .line 26
    return-void
.end method

.method private getDirtyString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "Clean"

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dirty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getMillisecondsDirty()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeCurrentStreamId()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    .line 30
    .local v0, "random":Lcom/subgraph/orchid/crypto/TorRandom;
    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    .line 31
    return-void
.end method

.method private static millisecondsElapsedSince(J)J
    .locals 5
    .param p0, "then"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    cmp-long v4, p0, v2

    if-nez v4, :cond_0

    .line 57
    :goto_0
    return-wide v2

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, "now":J
    sub-long v2, v0, p0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized getMillisecondsDirty()J
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->millisecondsElapsedSince(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMillisecondsElapsedSinceCreated()J
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampCreated:J

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->millisecondsElapsedSince(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getStateAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getDirtyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isBuilding()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized isDirty()Z
    .locals 4

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

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

.method isUnconnected()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextStreamId()I
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->streamIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    .line 109
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    const v2, 0xffff

    if-le v0, v2, :cond_0

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    .line 111
    :cond_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    monitor-exit v1

    return v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setStateBuilding()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 66
    return-void
.end method

.method setStateDestroyed()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->DESTROYED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 78
    return-void
.end method

.method setStateFailed()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 70
    return-void
.end method

.method setStateOpen()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 74
    return-void
.end method

.method declared-synchronized updateCreatedTimestamp()V
    .locals 2

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampCreated:J

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateDirtyTimestamp()V
    .locals 4

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-eq v0, v1, :cond_0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
