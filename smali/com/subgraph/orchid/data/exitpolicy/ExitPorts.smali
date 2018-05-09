.class public Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
.super Ljava/lang/Object;
.source "ExitPorts.java"


# instance fields
.field private final areAcceptPorts:Z

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/exitpolicy/PortRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 1
    .param p1, "acceptPorts"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->ranges:Ljava/util/List;

    .line 27
    iput-boolean p1, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->areAcceptPorts:Z

    .line 28
    return-void
.end method

.method public static createAcceptExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    .locals 2
    .param p0, "ports"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;-><init>(Z)V

    .line 13
    .local v0, "exitPorts":Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->parsePortRanges(Ljava/lang/String;)V

    .line 14
    return-object v0
.end method

.method public static createRejectExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    .locals 2
    .param p0, "ports"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;-><init>(Z)V

    .line 19
    .local v0, "exitPorts":Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->parsePortRanges(Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method private parsePortRanges(Ljava/lang/String;)V
    .locals 7
    .param p1, "portRanges"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "args":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 50
    .local v0, "arg":Ljava/lang/String;
    iget-object v5, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->ranges:Ljava/util/List;

    invoke-static {v0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptsPort(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->areAcceptPorts:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->contains(I)Z

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areAcceptPorts()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->areAcceptPorts:Z

    return v0
.end method

.method public contains(I)Z
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 41
    iget-object v2, p0, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    .line 42
    .local v1, "r":Lcom/subgraph/orchid/data/exitpolicy/PortRange;
    invoke-virtual {v1, p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->rangeContains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x1

    .line 44
    .end local v1    # "r":Lcom/subgraph/orchid/data/exitpolicy/PortRange;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
