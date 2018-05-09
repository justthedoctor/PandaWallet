.class public Lcom/subgraph/orchid/circuits/TorInitializationTracker;
.super Ljava/lang/Object;
.source "TorInitializationTracker.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final messageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bootstrapState:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/TorInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-class v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->logger:Ljava/util/logging/Logger;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    .line 18
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Starting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Connecting to directory server"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Finishing handshake with directory server"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Establishing an encrypted directory connection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Asking for networkstatus consensus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Loading networkstatus consensus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Asking for authority key certs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Loading authority key certs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Asking for relay descriptors"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Loading relay descriptors"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Connecting to the Tor network"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Finished Handshake with first hop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Establishing a Tor circuit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Done"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->stateLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->bootstrapState:I

    return-void
.end method

.method private getListeners()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/TorInitializationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 99
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMessageForCode(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 90
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknown state"

    goto :goto_0
.end method

.method private notifyListeners(I)V
    .locals 8
    .param p1, "code"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->getMessageForCode(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "message":Ljava/lang/String;
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/TorInitializationListener;

    .line 79
    .local v2, "listener":Lcom/subgraph/orchid/TorInitializationListener;
    :try_start_0
    invoke-interface {v2, v3, p1}, Lcom/subgraph/orchid/TorInitializationListener;->initializationProgress(Ljava/lang/String;I)V

    .line 80
    const/16 v4, 0x64

    if-lt p1, v4, :cond_0

    .line 81
    invoke-interface {v2}, Lcom/subgraph/orchid/TorInitializationListener;->initializationCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred in TorInitializationListener callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/subgraph/orchid/TorInitializationListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/subgraph/orchid/TorInitializationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/subgraph/orchid/TorInitializationListener;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBootstrapState()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->bootstrapState:I

    return v0
.end method

.method public notifyEvent(I)V
    .locals 2
    .param p1, "eventCode"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->bootstrapState:I

    if-le p1, v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 68
    :cond_0
    monitor-exit v1

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_1
    iput p1, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->bootstrapState:I

    .line 71
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyListeners(I)V

    .line 72
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/subgraph/orchid/TorInitializationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/subgraph/orchid/TorInitializationListener;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->bootstrapState:I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyListeners(I)V

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
