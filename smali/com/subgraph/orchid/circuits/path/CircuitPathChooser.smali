.class public Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
.super Ljava/lang/Object;
.source "CircuitPathChooser.java"


# instance fields
.field private final directory:Lcom/subgraph/orchid/Directory;

.field private entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

.field private final nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

.field private useEntryGuards:Z


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;)V
    .locals 1
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p3, "nodeChooser"    # Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    .line 33
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    .line 36
    return-void
.end method

.method private areInSameSlash16(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)Z
    .locals 6
    .param p1, "r1"    # Lcom/subgraph/orchid/Router;
    .param p2, "r2"    # Lcom/subgraph/orchid/Router;

    .prologue
    const/high16 v5, -0x10000

    .line 150
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    .line 151
    .local v0, "a1":Lcom/subgraph/orchid/data/IPv4Address;
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    .line 152
    .local v1, "a2":Lcom/subgraph/orchid/data/IPv4Address;
    const/high16 v2, -0x10000

    .line 153
    .local v2, "mask":I
    invoke-virtual {v0}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v4

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private countTargetSupport(Lcom/subgraph/orchid/Router;Ljava/util/List;)I
    .locals 4
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;>;"
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    .line 188
    .local v2, "t":Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;
    invoke-direct {p0, p1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->routerSupportsTarget(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "t":Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;
    :cond_1
    return v0
.end method

.method public static create(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
    .locals 2
    .param p0, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p1, "directory"    # Lcom/subgraph/orchid/Directory;

    .prologue
    .line 22
    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    new-instance v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-direct {v1, p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;)V

    return-object v0
.end method

.method private excludeChosenRouterAndRelated(Lcom/subgraph/orchid/Router;Ljava/util/Set;)V
    .locals 4
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "excludedRouters":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3}, Lcom/subgraph/orchid/Directory;->getAllRouters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 122
    .local v1, "r":Lcom/subgraph/orchid/Router;
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->areInSameSlash16(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v1    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getFamilyMembers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3, v2}, Lcom/subgraph/orchid/Directory;->getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 129
    .restart local v1    # "r":Lcom/subgraph/orchid/Router;
    if-eqz v1, :cond_2

    .line 131
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getFamilyMembers()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->isFamilyMember(Ljava/util/Collection;Lcom/subgraph/orchid/Router;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    .end local v1    # "r":Lcom/subgraph/orchid/Router;
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private filterForExitTargets(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    .local p2, "exitTargets":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;>;"
    const/4 v0, 0x0

    .line 158
    .local v0, "bestSupport":I
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    .end local p1    # "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 162
    .restart local p1    # "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 164
    .local v2, "nSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/Router;

    .line 166
    .local v3, "r":Lcom/subgraph/orchid/Router;
    invoke-direct {p0, v3, p2}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->countTargetSupport(Lcom/subgraph/orchid/Router;Ljava/util/List;)I

    move-result v5

    aput v5, v2, v1

    .line 167
    aget v5, v2, v1

    if-le v5, v0, :cond_2

    .line 168
    aget v0, v2, v1

    .line 164
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v3    # "r":Lcom/subgraph/orchid/Router;
    :cond_3
    if-eqz v0, :cond_0

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 178
    aget v5, v2, v1

    if-ne v5, v0, :cond_4

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-object p1, v4

    .line 182
    goto :goto_0
.end method

.method private getUsableExitRouters()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->getUsableRouters(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 112
    .local v1, "r":Lcom/subgraph/orchid/Router;
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isExit()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isBadExit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v1    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    return-object v2
.end method

.method private isFamilyMember(Ljava/util/Collection;Lcom/subgraph/orchid/Router;)Z
    .locals 4
    .param p2, "r"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/subgraph/orchid/Router;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "familyMemberNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v3, v2}, Lcom/subgraph/orchid/Directory;->getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 141
    .local v1, "member":Lcom/subgraph/orchid/Router;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const/4 v3, 0x1

    .line 145
    .end local v1    # "member":Lcom/subgraph/orchid/Router;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private routerSupportsTarget(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "target"    # Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    .prologue
    .line 196
    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->isAddressTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Router;->exitPolicyAccepts(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public chooseDirectoryPath()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    iget-boolean v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->isUsingBridges()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 46
    .local v2, "empty":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v3, v2}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->chooseRandomGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 47
    .local v0, "bridge":Lcom/subgraph/orchid/Router;
    if-nez v0, :cond_0

    .line 48
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to choose bridge for directory request"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_0
    new-array v3, v5, [Lcom/subgraph/orchid/Router;

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 53
    .end local v0    # "bridge":Lcom/subgraph/orchid/Router;
    .end local v2    # "empty":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    :goto_0
    return-object v3

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 53
    .local v1, "dir":Lcom/subgraph/orchid/Router;
    new-array v3, v5, [Lcom/subgraph/orchid/Router;

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public chooseEntryNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "excludedRouters":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->chooseRandomGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v2, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;

    invoke-direct {v2, p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    goto :goto_0
.end method

.method public chooseExitNodeForTargets(Ljava/util/List;)Lcom/subgraph/orchid/Router;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->getUsableExitRouters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->filterForExitTargets(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseExitNode(Ljava/util/List;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    return-object v1
.end method

.method public chooseInternalPath()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 58
    .local v0, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseMiddleNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 59
    .local v1, "finalRouter":Lcom/subgraph/orchid/Router;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->choosePathWithFinal(Lcom/subgraph/orchid/Router;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method chooseMiddleNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
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
    .line 96
    .local p1, "excludedRouters":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_MID:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v2, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$2;

    invoke-direct {v2, p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$2;-><init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0
.end method

.method public choosePathWithExit(Lcom/subgraph/orchid/Router;)Ljava/util/List;
    .locals 1
    .param p1, "exitRouter"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->choosePathWithFinal(Lcom/subgraph/orchid/Router;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public choosePathWithFinal(Lcom/subgraph/orchid/Router;)Ljava/util/List;
    .locals 5
    .param p1, "finalRouter"    # Lcom/subgraph/orchid/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/Router;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 68
    .local v1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->excludeChosenRouterAndRelated(Lcom/subgraph/orchid/Router;Ljava/util/Set;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseMiddleNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v2

    .line 71
    .local v2, "middleRouter":Lcom/subgraph/orchid/Router;
    if-nez v2, :cond_0

    .line 72
    new-instance v3, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;

    const-string v4, "Failed to select suitable middle node"

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->excludeChosenRouterAndRelated(Lcom/subgraph/orchid/Router;Ljava/util/Set;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseEntryNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 77
    .local v0, "entryRouter":Lcom/subgraph/orchid/Router;
    if-nez v0, :cond_1

    .line 78
    new-instance v3, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;

    const-string v4, "Failed to select suitable entry node"

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/subgraph/orchid/Router;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public enableEntryGuards(Lcom/subgraph/orchid/circuits/guards/EntryGuards;)V
    .locals 1
    .param p1, "entryGuards"    # Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->useEntryGuards:Z

    .line 41
    return-void
.end method
