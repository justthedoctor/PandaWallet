.class public Lcom/subgraph/orchid/circuits/InternalCircuitImpl;
.super Lcom/subgraph/orchid/circuits/CircuitImpl;
.source "InternalCircuitImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryCircuit;
.implements Lcom/subgraph/orchid/HiddenServiceCircuit;
.implements Lcom/subgraph/orchid/InternalCircuit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/InternalCircuitImpl$1;,
        Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;
    }
.end annotation


# instance fields
.field private ntorEnabled:Z

.field private type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;


# direct methods
.method protected constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V
    .locals 1
    .param p1, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
    .locals 1
    .param p1, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "prechosenPath":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitImpl;-><init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 26
    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    .line 27
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->isNtorEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->ntorEnabled:Z

    .line 28
    return-void
.end method

.method private cannibalizeTo(Lcom/subgraph/orchid/Router;)V
    .locals 4
    .param p1, "target"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v2, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-eq v1, v2, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot cannibalize internal circuit with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->ntorEnabled:Z

    invoke-direct {v0, p0, v1}, Lcom/subgraph/orchid/circuits/CircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Z)V

    .line 53
    .local v0, "extender":Lcom/subgraph/orchid/circuits/CircuitExtender;
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->extendTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;

    .line 54
    return-void
.end method


# virtual methods
.method public cannibalizeToDirectory(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;
    .locals 1
    .param p1, "target"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->cannibalizeTo(Lcom/subgraph/orchid/Router;)V

    .line 73
    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_DIRECTORY:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    .line 74
    return-object p0
.end method

.method public cannibalizeToIntroductionPoint(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Circuit;
    .locals 1
    .param p1, "target"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->cannibalizeTo(Lcom/subgraph/orchid/Router;)V

    .line 43
    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_INTRODUCTION:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    .line 44
    return-object p0
.end method

.method protected choosePathForCircuit(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;)Ljava/util/List;
    .locals 1
    .param p1, "pathChooser"    # Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;",
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
    .line 37
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseInternalPath()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public connectHiddenService(Lcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 3
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-eq v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot connect hidden service from internal circuit type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->appendNode(Lcom/subgraph/orchid/CircuitNode;)V

    .line 83
    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_CIRCUIT:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    .line 84
    return-object p0
.end method

.method protected getCircuitTypeLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$1;->$SwitchMap$com$subgraph$orchid$circuits$InternalCircuitImpl$InternalType:[I

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    const-string v0, "(null)"

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    const-string v0, "Hidden Service"

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v0, "HS Directory"

    goto :goto_0

    .line 111
    :pswitch_2
    const-string v0, "HS Introduction"

    goto :goto_0

    .line 113
    :pswitch_3
    const-string v0, "Internal"

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "autoclose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v3, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_DIRECTORY:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-eq v2, v3, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open directory stream on internal circuit with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->createNewStream()Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object v1

    .line 62
    .local v1, "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/subgraph/orchid/circuits/StreamImpl;->openDirectory(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :goto_0
    return-object v1

    .line 64
    .restart local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    goto :goto_0
.end method

.method public openStream(IJ)Lcom/subgraph/orchid/Stream;
    .locals 5
    .param p1, "port"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v3, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_CIRCUIT:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    if-eq v2, v3, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open stream to hidden service from internal circuit type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->type:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->createNewStream()Lcom/subgraph/orchid/circuits/StreamImpl;

    move-result-object v1

    .line 94
    .local v1, "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :try_start_0
    const-string v2, ""

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/subgraph/orchid/circuits/StreamImpl;->openExit(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :goto_0
    return-object v1

    .line 96
    .restart local v1    # "stream":Lcom/subgraph/orchid/circuits/StreamImpl;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->removeStream(Lcom/subgraph/orchid/circuits/StreamImpl;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl;->processStreamOpenException(Ljava/lang/Exception;)Lcom/subgraph/orchid/Stream;

    move-result-object v1

    goto :goto_0
.end method
