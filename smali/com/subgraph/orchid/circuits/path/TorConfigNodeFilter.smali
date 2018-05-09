.class public Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;
.super Ljava/lang/Object;
.source "TorConfigNodeFilter.java"


# static fields
.field private static final ENTRY_NODES_FILTER:Ljava/lang/String; = "EntryNodes"

.field private static final EXCLUDE_EXIT_NODES_FILTER:Ljava/lang/String; = "ExcludeExitNodes"

.field private static final EXCLUDE_NODES_FILTER:Ljava/lang/String; = "ExcludeNodes"

.field private static final EXIT_NODES_FILTER:Ljava/lang/String; = "ExitNodes"


# instance fields
.field private final filters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    .line 26
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    const-string v1, "ExcludeNodes"

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getExcludeNodes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    const-string v1, "ExcludeExitNodes"

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getExcludeExitNodes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    const-string v1, "EntryNodes"

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getEntryNodes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    const-string v1, "ExitNodes"

    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig;->getExitNodes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 30
    return-void
.end method

.method private static addFilter(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;>;"
    .local p2, "filterStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {p2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createFromStrings(Ljava/util/List;)Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method filterExitCandidates(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
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
    .line 40
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    .line 42
    .local v2, "r":Lcom/subgraph/orchid/Router;
    invoke-virtual {p0, v2}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isExitNodeIncluded(Lcom/subgraph/orchid/Router;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v2    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    return-object v0
.end method

.method isExcludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z
    .locals 2
    .param p1, "r"    # Lcom/subgraph/orchid/Router;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    .line 65
    .local v0, "f":Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result v1

    goto :goto_0
.end method

.method isExitNodeIncluded(Lcom/subgraph/orchid/Router;)Z
    .locals 1
    .param p1, "exitRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 50
    const-string v0, "ExitNodes"

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isIncludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExcludeExitNodes"

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isExcludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ExcludeNodes"

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->isExcludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIncludedByFilter(Lcom/subgraph/orchid/Router;Ljava/lang/String;)Z
    .locals 2
    .param p1, "r"    # Lcom/subgraph/orchid/Router;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/TorConfigNodeFilter;->filters:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    .line 57
    .local v0, "f":Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result v1

    goto :goto_0
.end method
