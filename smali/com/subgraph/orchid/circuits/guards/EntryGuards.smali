.class public Lcom/subgraph/orchid/circuits/guards/EntryGuards;
.super Ljava/lang/Object;
.source "EntryGuards.java"


# static fields
.field private static final EIGHTEEN_HOURS:J

.field private static final FOUR_HOURS:J

.field private static final MIN_USABLE_GUARDS:I = 0x2

.field private static final NUM_ENTRY_GUARDS:I = 0x3

.field private static final ONE_HOUR:J

.field private static final SEVEN_DAYS:J

.field private static final SIXTY_DAYS:J

.field private static final SIX_HOURS:J

.field private static final THIRTYSIX_HOURS:J

.field private static final THIRTY_DAYS:J

.field private static final THREE_DAYS:J

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final bridges:Lcom/subgraph/orchid/circuits/guards/Bridges;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final lock:Ljava/lang/Object;

.field private final nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

.field private final pendingProbes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/GuardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    .line 270
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->ONE_HOUR:J

    .line 271
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->FOUR_HOURS:J

    .line 272
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIX_HOURS:J

    .line 273
    const-wide/16 v0, 0x12

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->EIGHTEEN_HOURS:J

    .line 274
    const-wide/16 v0, 0x24

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTYSIX_HOURS:J

    .line 275
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THREE_DAYS:J

    .line 276
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SEVEN_DAYS:J

    .line 277
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTY_DAYS:J

    .line 278
    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIXTY_DAYS:J

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/DirectoryDownloader;Lcom/subgraph/orchid/Directory;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "connectionCache"    # Lcom/subgraph/orchid/ConnectionCache;
    .param p3, "directoryDownloader"    # Lcom/subgraph/orchid/DirectoryDownloader;
    .param p4, "directory"    # Lcom/subgraph/orchid/Directory;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->config:Lcom/subgraph/orchid/TorConfig;

    .line 43
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 44
    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-direct {v0, p1, p4}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    .line 45
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 46
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    .line 48
    new-instance v0, Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-direct {v0, p1, p3}, Lcom/subgraph/orchid/circuits/guards/Bridges;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryDownloader;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->bridges:Lcom/subgraph/orchid/circuits/guards/Bridges;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->executor:Ljava/util/concurrent/Executor;

    .line 51
    return-void
.end method

.method private addPendingInitialConnections(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "routerSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/GuardEntry;

    .line 181
    .local v0, "entry":Lcom/subgraph/orchid/GuardEntry;
    invoke-interface {v0}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v2

    .line 183
    .local v2, "r":Lcom/subgraph/orchid/Router;
    if-eqz v2, :cond_0

    .line 184
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v0    # "entry":Lcom/subgraph/orchid/GuardEntry;
    .end local v2    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    return-void
.end method

.method private addRouterIfUsableAndNotExcluded(Lcom/subgraph/orchid/GuardEntry;Ljava/util/Set;Ljava/util/List;)V
    .locals 2
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/GuardEntry;",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    .local p3, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->testCurrentlyUsable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getDownSince()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 165
    .local v0, "r":Lcom/subgraph/orchid/Router;
    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "r":Lcom/subgraph/orchid/Router;
    :cond_0
    return-void
.end method

.method private chooseNewGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v2, Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;

    invoke-direct {v2, p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;-><init>(Lcom/subgraph/orchid/circuits/guards/EntryGuards;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0
.end method

.method private countPendingInitialProbes()I
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "count":I
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/GuardEntry;

    .line 208
    .local v1, "entry":Lcom/subgraph/orchid/GuardEntry;
    invoke-interface {v1}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "entry":Lcom/subgraph/orchid/GuardEntry;
    :cond_1
    return v0
.end method

.method private static daysToMs(J)J
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 284
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getExcludedForChooseNew(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    .local p2, "usable":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 175
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->addPendingInitialConnections(Ljava/util/Set;)V

    .line 176
    return-object v0
.end method

.method private getMinimumUsableGuards(Ljava/util/Set;I)Ljava/util/List;
    .locals 5
    .param p2, "minSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->testStatusOfAllGuards()V

    .line 80
    :goto_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getUsableGuardRouters(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "usableGuards":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p2, :cond_0

    .line 82
    monitor-exit v2

    return-object v0

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getExcludedForChooseNew(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v1, p2, v3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->maybeChooseNew(IILjava/util/Set;)V

    .line 86
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 88
    .end local v0    # "usableGuards":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRetestInterval(J)J
    .locals 2
    .param p1, "timeDown"    # J

    .prologue
    .line 295
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIX_HOURS:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 296
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->ONE_HOUR:J

    .line 302
    :goto_0
    return-wide v0

    .line 297
    :cond_0
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THREE_DAYS:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 298
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->FOUR_HOURS:J

    goto :goto_0

    .line 299
    :cond_1
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SEVEN_DAYS:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 300
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->EIGHTEEN_HOURS:J

    goto :goto_0

    .line 302
    :cond_2
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTYSIX_HOURS:J

    goto :goto_0
.end method

.method private getUsableGuardRouters(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, "usableRouters":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3}, Lcom/subgraph/orchid/Directory;->getGuardEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/GuardEntry;

    .line 157
    .local v0, "entry":Lcom/subgraph/orchid/GuardEntry;
    invoke-direct {p0, v0, p1, v2}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->addRouterIfUsableAndNotExcluded(Lcom/subgraph/orchid/GuardEntry;Ljava/util/Set;Ljava/util/List;)V

    goto :goto_0

    .line 159
    .end local v0    # "entry":Lcom/subgraph/orchid/GuardEntry;
    :cond_0
    return-object v2
.end method

.method private static hoursToMs(J)J
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 281
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method private initialProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 119
    sget-object v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Probe connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeeded.  Adding it as a new entry guard."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Directory;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    .line 121
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->retestAllUnreachable()V

    .line 122
    return-void
.end method

.method private isExpired(Lcom/subgraph/orchid/GuardEntry;)Z
    .locals 8
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 251
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getCreatedTime()Ljava/util/Date;

    move-result-object v2

    .line 252
    .local v2, "createdAt":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 253
    .local v3, "now":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 254
    .local v0, "createdAgo":J
    sget-wide v4, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIXTY_DAYS:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPermanentlyUnlisted(Lcom/subgraph/orchid/GuardEntry;)Z
    .locals 9
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getUnlistedSince()Ljava/util/Date;

    move-result-object v1

    .line 239
    .local v1, "unlistedSince":Ljava/util/Date;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v4

    .line 242
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 243
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 244
    .local v2, "unlistedTime":J
    sget-wide v5, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTY_DAYS:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 224
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->testCurrentlyUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-direct {v1, v2, p0, p1}, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;-><init>(Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/guards/EntryGuards;Lcom/subgraph/orchid/GuardEntry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private maybeChooseNew(IILjava/util/Set;)V
    .locals 6
    .param p1, "usableSize"    # I
    .param p2, "minSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p3, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->countPendingInitialProbes()I

    move-result v3

    add-int v2, p1, v3

    .line 192
    .local v2, "sz":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 193
    invoke-direct {p0, p3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->chooseNewGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 194
    .local v1, "newGuard":Lcom/subgraph/orchid/Router;
    if-nez v1, :cond_1

    .line 195
    sget-object v3, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    const-string v4, "Need to add entry guards but no suitable guard routers are available"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 203
    .end local v1    # "newGuard":Lcom/subgraph/orchid/Router;
    :cond_0
    return-void

    .line 198
    .restart local v1    # "newGuard":Lcom/subgraph/orchid/Router;
    :cond_1
    sget-object v3, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Testing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as a new guard since we only have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " usable guards"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3, v1}, Lcom/subgraph/orchid/Directory;->createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;

    move-result-object v0

    .line 200
    .local v0, "entry":Lcom/subgraph/orchid/GuardEntry;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 202
    goto :goto_0
.end method

.method private needsUnreachableTest(Lcom/subgraph/orchid/GuardEntry;)Z
    .locals 12
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    const/4 v7, 0x0

    .line 258
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getDownSince()Ljava/util/Date;

    move-result-object v0

    .line 259
    .local v0, "downSince":Ljava/util/Date;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->testCurrentlyUsable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v7

    .line 262
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 263
    .local v2, "now":Ljava/util/Date;
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getLastConnectAttempt()Ljava/util/Date;

    move-result-object v1

    .line 264
    .local v1, "lastConnect":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v3, v8, v10

    .line 265
    .local v3, "timeDown":J
    if-nez v1, :cond_2

    move-wide v5, v3

    .line 267
    .local v5, "timeSinceLastRetest":J
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getRetestInterval(J)J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-lez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    .line 265
    .end local v5    # "timeSinceLastRetest":J
    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v5, v8, v10

    goto :goto_1
.end method

.method private retestAllUnreachable()V
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2}, Lcom/subgraph/orchid/Directory;->getGuardEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/GuardEntry;

    .line 138
    .local v0, "e":Lcom/subgraph/orchid/GuardEntry;
    invoke-interface {v0}, Lcom/subgraph/orchid/GuardEntry;->getDownSince()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    .line 142
    .end local v0    # "e":Lcom/subgraph/orchid/GuardEntry;
    :cond_1
    return-void
.end method

.method private retestProbeFailed(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 125
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->markAsDown()V

    .line 126
    return-void
.end method

.method private retestProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 115
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->clearDownSince()V

    .line 116
    return-void
.end method

.method private testStatusOfAllGuards()V
    .locals 3

    .prologue
    .line 145
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2}, Lcom/subgraph/orchid/Directory;->getGuardEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/GuardEntry;

    .line 146
    .local v0, "entry":Lcom/subgraph/orchid/GuardEntry;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->isPermanentlyUnlisted(Lcom/subgraph/orchid/GuardEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->isExpired(Lcom/subgraph/orchid/GuardEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2, v0}, Lcom/subgraph/orchid/Directory;->removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->needsUnreachableTest(Lcom/subgraph/orchid/GuardEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    .line 152
    .end local v0    # "entry":Lcom/subgraph/orchid/GuardEntry;
    :cond_3
    return-void
.end method


# virtual methods
.method public chooseRandomGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v2}, Lcom/subgraph/orchid/TorConfig;->getUseBridges()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->bridges:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-virtual {v2, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->chooseRandomBridge(Ljava/util/Set;)Lcom/subgraph/orchid/BridgeRouter;

    move-result-object v2

    .line 73
    :goto_0
    return-object v2

    .line 71
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getMinimumUsableGuards(Ljava/util/Set;I)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "usableGuards":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    .local v0, "n":I
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v2, v0}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    goto :goto_0
.end method

.method public isUsingBridges()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getUseBridges()Z

    move-result v0

    return v0
.end method

.method probeConnectionFailed(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->retestProbeFailed(Lcom/subgraph/orchid/GuardEntry;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method probeConnectionSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->retestProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V

    .line 99
    :goto_0
    monitor-exit v1

    .line 100
    return-void

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->initialProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
