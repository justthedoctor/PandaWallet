.class public Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;
.super Ljava/lang/Object;
.source "GuardProbeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final entry:Lcom/subgraph/orchid/GuardEntry;

.field private final entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/guards/EntryGuards;Lcom/subgraph/orchid/GuardEntry;)V
    .locals 0
    .param p1, "connectionCache"    # Lcom/subgraph/orchid/ConnectionCache;
    .param p2, "entryGuards"    # Lcom/subgraph/orchid/circuits/guards/EntryGuards;
    .param p3, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 19
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    .line 20
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 24
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-interface {v2}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 25
    .local v1, "router":Lcom/subgraph/orchid/Router;
    if-nez v1, :cond_0

    .line 26
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->probeConnectionFailed(Lcom/subgraph/orchid/GuardEntry;)V

    .line 41
    :goto_0
    return-void

    .line 30
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/subgraph/orchid/ConnectionCache;->getConnectionTo(Lcom/subgraph/orchid/Router;Z)Lcom/subgraph/orchid/Connection;

    .line 31
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->probeConnectionSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lcom/subgraph/orchid/ConnectionIOException;
    sget-object v2, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception probing entry guard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 40
    .end local v0    # "e":Lcom/subgraph/orchid/ConnectionIOException;
    :goto_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->probeConnectionFailed(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 37
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected exception probing entry guard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
