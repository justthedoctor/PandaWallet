.class public Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
.super Ljava/lang/Object;
.source "PolicyRule.java"


# static fields
.field private static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field private final isAcceptRule:Z

.field private final network:Lcom/subgraph/orchid/data/exitpolicy/Network;

.field private final portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;


# direct methods
.method private constructor <init>(Lcom/subgraph/orchid/data/exitpolicy/Network;Lcom/subgraph/orchid/data/exitpolicy/PortRange;Z)V
    .locals 0
    .param p1, "network"    # Lcom/subgraph/orchid/data/exitpolicy/Network;
    .param p2, "portRange"    # Lcom/subgraph/orchid/data/exitpolicy/PortRange;
    .param p3, "isAccept"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    .line 45
    iput-object p2, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    .line 46
    iput-boolean p3, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule:Z

    .line 47
    return-void
.end method

.method public static createAcceptFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    .locals 1
    .param p0, "rule"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createRule(Ljava/lang/String;Z)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object v0

    return-object v0
.end method

.method public static createRejectFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    .locals 1
    .param p0, "rule"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->createRule(Ljava/lang/String;Z)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    move-result-object v0

    return-object v0
.end method

.method private static createRule(Ljava/lang/String;Z)Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;
    .locals 4
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "isAccept"    # Z

    .prologue
    .line 18
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "args":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 20
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse exit policy rule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->parseNetwork(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->parsePortRange(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;-><init>(Lcom/subgraph/orchid/data/exitpolicy/Network;Lcom/subgraph/orchid/data/exitpolicy/PortRange;Z)V

    return-object v1
.end method

.method private static parseNetwork(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;
    .locals 1
    .param p0, "network"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/subgraph/orchid/data/exitpolicy/Network;->ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/data/exitpolicy/Network;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;

    move-result-object v0

    goto :goto_0
.end method

.method private static parsePortRange(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;
    .locals 1
    .param p0, "portRange"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->ALL_PORTS:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public isAcceptRule()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule:Z

    return v0
.end method

.method public matchesDestination(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 1
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "port"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/Network;->contains(Lcom/subgraph/orchid/data/IPv4Address;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->rangeContains(I)Z

    move-result v0

    goto :goto_0
.end method

.method public matchesPort(I)Z
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    sget-object v1, Lcom/subgraph/orchid/data/exitpolicy/Network;->ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->rangeContains(I)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->isAcceptRule:Z

    if-eqz v1, :cond_0

    const-string v0, "accept"

    .line 67
    .local v0, "keyword":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->network:Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/data/exitpolicy/PolicyRule;->portRange:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    .end local v0    # "keyword":Ljava/lang/String;
    :cond_0
    const-string v0, "reject"

    goto :goto_0
.end method
