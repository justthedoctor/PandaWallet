.class public Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;
.super Ljava/lang/Object;
.source "ExitPolicy.java"


# instance fields
.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptsDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 3
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0, p2}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsPort(I)Z

    move-result v2

    .line 35
    :goto_0
    return v2

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    .line 31
    .local v1, "r":Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    invoke-virtual {v1, p1, p2}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->matchesDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule()Z

    move-result v2

    goto :goto_0

    .line 35
    .end local v1    # "r":Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public acceptsPort(I)Z
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 39
    iget-object v2, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    .line 40
    .local v1, "r":Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->matchesPort(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule()Z

    move-result v2

    .line 43
    .end local v1    # "r":Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public acceptsTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z
    .locals 2
    .param p1, "target"    # Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    .prologue
    .line 20
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->isAddressTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result v0

    .line 23
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->acceptsPort(I)Z

    move-result v0

    goto :goto_0
.end method

.method public addAcceptRule(Ljava/lang/String;)V
    .locals 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createAcceptFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public addRejectRule(Ljava/lang/String;)V
    .locals 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createRejectFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    .line 49
    .local v1, "r":Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    .end local v1    # "r":Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
