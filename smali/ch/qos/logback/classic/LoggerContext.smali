.class public Lch/qos/logback/classic/LoggerContext;
.super Lch/qos/logback/core/ContextBase;

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field private androidPropsInitialized:Z

.field private frameworkPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loggerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerContextListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/classic/spi/LoggerContextListener;",
            ">;"
        }
    .end annotation
.end field

.field private loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

.field private maxCallerDataDepth:I

.field private noAppenderWarning:I

.field private packagingDataEnabled:Z

.field resetCount:I

.field final root:Lch/qos/logback/classic/Logger;

.field private size:I

.field private final turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lch/qos/logback/core/ContextBase;-><init>()V

    iput v1, p0, Lch/qos/logback/classic/LoggerContext;->noAppenderWarning:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    new-instance v0, Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-direct {v0}, Lch/qos/logback/classic/spi/TurboFilterList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    iput-boolean v3, p0, Lch/qos/logback/classic/LoggerContext;->packagingDataEnabled:Z

    iput-boolean v1, p0, Lch/qos/logback/classic/LoggerContext;->androidPropsInitialized:Z

    const/16 v0, 0x8

    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->maxCallerDataDepth:I

    iput v1, p0, Lch/qos/logback/classic/LoggerContext;->resetCount:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    new-instance v0, Lch/qos/logback/classic/spi/LoggerContextVO;

    invoke-direct {v0, p0}, Lch/qos/logback/classic/spi/LoggerContextVO;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

    new-instance v0, Lch/qos/logback/classic/Logger;

    const-string v1, "ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lch/qos/logback/classic/Logger;-><init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/LoggerContext;)V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    sget-object v1, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    const-string v1, "ROOT"

    iget-object v2, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->initEvaluatorMap()V

    iput v3, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->frameworkPackages:Ljava/util/List;

    return-void
.end method

.method private fireOnReset()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-interface {v0, p0}, Lch/qos/logback/classic/spi/LoggerContextListener;->onReset(Lch/qos/logback/classic/LoggerContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireOnStart()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-interface {v0, p0}, Lch/qos/logback/classic/spi/LoggerContextListener;->onStart(Lch/qos/logback/classic/LoggerContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireOnStop()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-interface {v0, p0}, Lch/qos/logback/classic/spi/LoggerContextListener;->onStop(Lch/qos/logback/classic/LoggerContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private incSize()V
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    return-void
.end method

.method private isSpecialKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PACKAGE_NAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VERSION_NAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VERSION_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EXT_DIR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DATA_DIR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAllListeners()V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private resetListenersExceptResetResistant()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-interface {v0}, Lch/qos/logback/classic/spi/LoggerContextListener;->isResetResistant()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private resetStatusListeners()V
    .locals 3

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v1

    invoke-interface {v1}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusListenerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/status/StatusListener;

    invoke-interface {v1, v0}, Lch/qos/logback/core/status/StatusManager;->remove(Lch/qos/logback/core/status/StatusListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateLoggerContextVO()V
    .locals 1

    new-instance v0, Lch/qos/logback/classic/spi/LoggerContextVO;

    invoke-direct {v0, p0}, Lch/qos/logback/classic/spi/LoggerContextVO;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

    return-void
.end method


# virtual methods
.method public addListener(Lch/qos/logback/classic/spi/LoggerContextListener;)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTurboFilter(Lch/qos/logback/classic/turbo/TurboFilter;)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0, p1}, Lch/qos/logback/classic/spi/TurboFilterList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public exists(Ljava/lang/String;)Lch/qos/logback/classic/Logger;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    return-object v0
.end method

.method fireOnLevelChange(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-interface {v0, p1, p2}, Lch/qos/logback/classic/spi/LoggerContextListener;->onLevelChange(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCopyOfListenerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/classic/spi/LoggerContextListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFrameworkPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->frameworkPackages:Ljava/util/List;

    return-object v0
.end method

.method public final getLogger(Ljava/lang/Class;)Lch/qos/logback/classic/Logger;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "ROOT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    if-nez v0, :cond_1

    move-object v0, v1

    move v1, v2

    :goto_1
    invoke-static {p1, v1}, Lch/qos/logback/classic/util/LoggerNameUtil;->getSeparatorIndexOf(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_4

    move-object v1, p1

    :goto_2
    add-int/lit8 v3, v5, 0x1

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->getChildByName(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->createChildByName(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v4

    iget-object v6, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->incSize()V

    :cond_3
    move-object v1, v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v7, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public bridge synthetic getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 1

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerContextRemoteView()Lch/qos/logback/classic/spi/LoggerContextVO;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

    return-object v0
.end method

.method public getLoggerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/classic/Logger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lch/qos/logback/classic/spi/LoggerComparator;

    invoke-direct {v0}, Lch/qos/logback/classic/spi/LoggerComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public getMaxCallerDataDepth()I
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->maxCallerDataDepth:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lch/qos/logback/classic/LoggerContext;->isSpecialKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lch/qos/logback/classic/LoggerContext;->androidPropsInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/LoggerContext;->androidPropsInitialized:Z

    invoke-static {p0}, Lch/qos/logback/classic/android/AndroidManifestPropertiesUtil;->setAndroidProperties(Lch/qos/logback/core/Context;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lch/qos/logback/core/ContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v1

    new-instance v2, Lch/qos/logback/core/status/WarnStatus;

    const-string v3, "Can\'t set manifest properties"

    invoke-direct {v2, v3, v0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/LoggerContext;->androidPropsInitialized:Z

    goto :goto_0
.end method

.method final getTurboFilterChainDecision_0_3OrMore(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 7

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lch/qos/logback/classic/spi/TurboFilterList;->getTurboFilterChainDecision(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    goto :goto_0
.end method

.method final getTurboFilterChainDecision_1(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 7

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v5, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lch/qos/logback/classic/spi/TurboFilterList;->getTurboFilterChainDecision(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    goto :goto_0
.end method

.method final getTurboFilterChainDecision_2(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 7

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, v5, v1

    const/4 v1, 0x1

    aput-object p6, v5, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lch/qos/logback/classic/spi/TurboFilterList;->getTurboFilterChainDecision(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    goto :goto_0
.end method

.method public getTurboFilterList()Lch/qos/logback/classic/spi/TurboFilterList;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    return-object v0
.end method

.method initEvaluatorMap()V
    .locals 2

    const-string v0, "EVALUATOR_MAP"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/classic/LoggerContext;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public isPackagingDataEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/classic/LoggerContext;->packagingDataEnabled:Z

    return v0
.end method

.method final noAppenderDefinedWarning(Lch/qos/logback/classic/Logger;)V
    .locals 4

    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->noAppenderWarning:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lch/qos/logback/classic/LoggerContext;->noAppenderWarning:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    new-instance v1, Lch/qos/logback/core/status/WarnStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No appenders present in context ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for logger ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    :cond_0
    return-void
.end method

.method public putProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lch/qos/logback/core/ContextBase;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->updateLoggerContextVO()V

    return-void
.end method

.method public removeListener(Lch/qos/logback/classic/spi/LoggerContextListener;)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->resetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->resetCount:I

    invoke-super {p0}, Lch/qos/logback/core/ContextBase;->reset()V

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->initEvaluatorMap()V

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    invoke-virtual {v0}, Lch/qos/logback/classic/Logger;->recursiveReset()V

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->resetTurboFilterList()V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->fireOnReset()V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->resetListenersExceptResetResistant()V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->resetStatusListeners()V

    return-void
.end method

.method public resetTurboFilterList()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/turbo/TurboFilter;

    invoke-virtual {v0}, Lch/qos/logback/classic/turbo/TurboFilter;->stop()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->clear()V

    return-void
.end method

.method public setMaxCallerDataDepth(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/classic/LoggerContext;->maxCallerDataDepth:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lch/qos/logback/core/ContextBase;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->updateLoggerContextVO()V

    return-void
.end method

.method public setPackagingDataEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/classic/LoggerContext;->packagingDataEnabled:Z

    return-void
.end method

.method size()I
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    return v0
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lch/qos/logback/core/ContextBase;->start()V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->fireOnStart()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->reset()V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->fireOnStop()V

    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->resetAllListeners()V

    invoke-super {p0}, Lch/qos/logback/core/ContextBase;->stop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
