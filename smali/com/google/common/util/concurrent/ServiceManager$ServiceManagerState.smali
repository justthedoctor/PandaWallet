.class final Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceManagerState"
.end annotation


# instance fields
.field final awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final monitor:Lcom/google/common/util/concurrent/Monitor;

.field final numberOfServices:I

.field final queuedListeners:Lcom/google/common/util/concurrent/ExecutionQueue;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field ready:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final servicesByState:Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final startupTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final states:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

.field transitioned:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "services":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<Lcom/google/common/util/concurrent/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v2, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v2}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    .line 390
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;

    invoke-direct {v3, p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    .line 399
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v2}, Lcom/google/common/collect/SetMultimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    .line 402
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    .line 428
    new-instance v2, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v2, p0, v3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Monitor;)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 441
    new-instance v2, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v2, p0, v3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$3;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Monitor;)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 448
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    .line 459
    new-instance v2, Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-direct {v2}, Lcom/google/common/util/concurrent/ExecutionQueue;-><init>()V

    iput-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Lcom/google/common/util/concurrent/ExecutionQueue;

    .line 469
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    .line 470
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v2, v3, p1}, Lcom/google/common/collect/SetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 471
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 472
    .local v1, "service":Lcom/google/common/util/concurrent/Service;
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 474
    .end local v1    # "service":Lcom/google/common/util/concurrent/Service;
    :cond_0
    return-void
.end method


# virtual methods
.method addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/common/util/concurrent/ServiceManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 503
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;-><init>(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 514
    return-void

    .line 512
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method awaitHealthy()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 519
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->checkHealthy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 523
    return-void

    .line 521
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for the services to become healthy. The following services have not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    .line 533
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->checkHealthy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 537
    return-void
.end method

.method awaitStopped()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 541
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 542
    return-void
.end method

.method awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for the services to stop. The following services have not stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 556
    return-void
.end method

.method checkHealthy()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-eq v0, v1, :cond_0

    .line 711
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to be healthy after starting. The following services are not running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v3}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_0
    return-void
.end method

.method executeListeners()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "It is incorrect to execute listeners with the monitor held."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 705
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Lcom/google/common/util/concurrent/ExecutionQueue;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionQueue;->execute()V

    .line 706
    return-void

    .line 703
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fireFailedListeners(Lcom/google/common/util/concurrent/Service;)V
    .locals 5
    .param p1, "service"    # Lcom/google/common/util/concurrent/Service;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 692
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    .line 693
    .local v1, "pair":Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Lcom/google/common/util/concurrent/ExecutionQueue;

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$7;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;Lcom/google/common/util/concurrent/Service;)V

    iget-object v4, v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/ExecutionQueue;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 699
    .end local v1    # "pair":Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    :cond_0
    return-void
.end method

.method fireHealthyListeners()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 681
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    .line 682
    .local v1, "pair":Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Lcom/google/common/util/concurrent/ExecutionQueue;

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$6;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$6;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;)V

    iget-object v4, v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/ExecutionQueue;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 688
    .end local v1    # "pair":Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    :cond_0
    return-void
.end method

.method fireStoppedListeners()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 670
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    .line 671
    .local v1, "pair":Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->queuedListeners:Lcom/google/common/util/concurrent/ExecutionQueue;

    new-instance v3, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;)V

    iget-object v4, v1, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v4}, Lcom/google/common/util/concurrent/ExecutionQueue;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 677
    .end local v1    # "pair":Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;
    :cond_0
    return-void
.end method

.method markReady()V
    .locals 6

    .prologue
    .line 481
    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 483
    :try_start_0
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitioned:Z

    if-nez v3, :cond_0

    .line 485
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 500
    return-void

    .line 488
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 489
    .local v2, "servicesInBadStates":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/Service;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMultimap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 490
    .local v1, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v3

    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-eq v3, v4, :cond_1

    .line 491
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 498
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "service":Lcom/google/common/util/concurrent/Service;
    .end local v2    # "servicesInBadStates":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/Service;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v3

    .line 494
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "servicesInBadStates":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/util/concurrent/Service;>;"
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Services started transitioning asynchronously before the ServiceManager was constructed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method servicesByState()Lcom/google/common/collect/ImmutableMultimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 560
    .local v0, "builder":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service;>;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 562
    :try_start_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v3}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v3

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

    check-cast v1, Ljava/util/Map$Entry;

    .line 563
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v3, :cond_0

    .line 564
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 568
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 570
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v3

    return-object v3
.end method

.method startupTimes()Lcom/google/common/collect/ImmutableMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v7, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v7}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 577
    :try_start_0
    iget-object v7, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    invoke-interface {v7}, Lcom/google/common/collect/Multiset;->size()I

    move-result v7

    iget-object v8, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v9, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v8, v9}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v9, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v8, v9}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 579
    .local v4, "loadTimes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    iget-object v7, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 580
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Lcom/google/common/base/Stopwatch;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/util/concurrent/Service;

    .line 581
    .local v5, "service":Lcom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/base/Stopwatch;

    .line 586
    .local v6, "stopWatch":Lcom/google/common/base/Stopwatch;
    invoke-virtual {v6}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    sget-object v8, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v7, v8, v5}, Lcom/google/common/collect/SetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    instance-of v7, v5, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v7, :cond_0

    .line 588
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 592
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Lcom/google/common/base/Stopwatch;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "loadTimes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    .end local v5    # "service":Lcom/google/common/util/concurrent/Service;
    .end local v6    # "stopWatch":Lcom/google/common/base/Stopwatch;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v8}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v7

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "loadTimes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    :cond_1
    iget-object v7, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v7}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 594
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v7

    new-instance v8, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;

    invoke-direct {v8, p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    invoke-virtual {v7, v8}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 600
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 601
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 602
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_1

    .line 604
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    return-object v7
.end method

.method transitionService(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V
    .locals 6
    .param p1, "service"    # Lcom/google/common/util/concurrent/Service;
    .param p2, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p3, "to"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 619
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    if-eq p2, p3, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 621
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 623
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitioned:Z

    .line 624
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 664
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V

    .line 666
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 620
    goto :goto_0

    .line 628
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v1, p2, p1}, Lcom/google/common/collect/SetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Service %s not at the expected location in the state map %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 630
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v1, p3, p1}, Lcom/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Service %s in the state map unexpectedly at %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 633
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Stopwatch;

    .line 634
    .local v0, "stopwatch":Lcom/google/common/base/Stopwatch;
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p2, v1, :cond_2

    .line 635
    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 637
    :cond_2
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p3, v1}, Lcom/google/common/util/concurrent/Service$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 639
    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 640
    instance-of v1, p1, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v1, :cond_3

    .line 641
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Started {0} in {1}."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    :cond_3
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    if-ne p3, v1, :cond_4

    .line 649
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->fireFailedListeners(Lcom/google/common/util/concurrent/Service;)V

    .line 652
    :cond_4
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v1, v2, :cond_6

    .line 655
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->fireHealthyListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 664
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V

    goto/16 :goto_1

    .line 656
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lcom/google/common/collect/Multiset;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v2, v3}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v1, v2, :cond_5

    .line 657
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->fireStoppedListeners()V

    .line 659
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 662
    .end local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 664
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->executeListeners()V

    throw v1
.end method
