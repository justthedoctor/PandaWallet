.class public Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;
.super Ljava/lang/Object;
.source "RendezvousCircuitBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/subgraph/orchid/HiddenServiceCircuit;",
        ">;"
    }
.end annotation


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

.field private final logger:Ljava/util/logging/Logger;

.field private final serviceDescriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V
    .locals 1
    .param p1, "directory"    # Lcom/subgraph/orchid/Directory;
    .param p2, "circuitManager"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
    .param p3, "hiddenService"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .param p4, "descriptor"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    .line 25
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->directory:Lcom/subgraph/orchid/Directory;

    .line 26
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 27
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 28
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->serviceDescriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .line 29
    return-void
.end method

.method private attemptOpenIntroductionCircuit(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)Lcom/subgraph/orchid/Circuit;
    .locals 7
    .param p1, "ip"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->directory:Lcom/subgraph/orchid/Directory;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/subgraph/orchid/Directory;->getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;

    move-result-object v2

    .line 84
    .local v2, "r":Lcom/subgraph/orchid/Router;
    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-object v3

    .line 89
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    .line 90
    .local v0, "circuit":Lcom/subgraph/orchid/InternalCircuit;
    invoke-interface {v0, v2}, Lcom/subgraph/orchid/InternalCircuit;->cannibalizeToIntroductionPoint(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Circuit;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 91
    .end local v0    # "circuit":Lcom/subgraph/orchid/InternalCircuit;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Lcom/subgraph/orchid/TorException;
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannibalizeTo() failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openIntroduction()Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;
    .locals 5

    .prologue
    .line 73
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->serviceDescriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->getShuffledIntroductionPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .line 74
    .local v2, "ip":Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->attemptOpenIntroductionCircuit(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)Lcom/subgraph/orchid/Circuit;

    move-result-object v0

    .line 75
    .local v0, "circuit":Lcom/subgraph/orchid/Circuit;
    if-eqz v0, :cond_0

    .line 76
    new-instance v3, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-direct {v3, v4, v0, v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    .line 79
    .end local v0    # "circuit":Lcom/subgraph/orchid/Circuit;
    .end local v2    # "ip":Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call()Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening rendezvous circuit for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 35
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v6}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v4

    .line 36
    .local v4, "rendezvous":Lcom/subgraph/orchid/InternalCircuit;
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Establishing rendezvous for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 37
    new-instance v5, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;

    invoke-direct {v5, v4}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;-><init>(Lcom/subgraph/orchid/InternalCircuit;)V

    .line 38
    .local v5, "rp":Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;
    invoke-virtual {v5}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->establishRendezvous()Z

    move-result v6

    if-nez v6, :cond_0

    .line 39
    invoke-interface {v4}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    .line 65
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening introduction circuit for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->openIntroduction()Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;

    move-result-object v2

    .line 44
    .local v2, "introductionProcessor":Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;
    if-nez v2, :cond_1

    .line 45
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    const-string v7, "Failed to open connection to any introduction point"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    invoke-interface {v4}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending introduce cell for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    new-instance v3, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-direct {v3}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;-><init>()V

    .line 51
    .local v3, "kex":Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v6

    invoke-virtual {v3}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getPublicKeyBytes()[B

    move-result-object v7

    invoke-virtual {v5}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->getCookie()[B

    move-result-object v8

    invoke-virtual {v5}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->getRendezvousRouter()Lcom/subgraph/orchid/Router;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->sendIntroduce(Lcom/subgraph/orchid/crypto/TorPublicKey;[B[BLcom/subgraph/orchid/Router;)Z

    move-result v1

    .line 52
    .local v1, "icResult":Z
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->markCircuitForClose()V

    .line 53
    if-nez v1, :cond_2

    .line 54
    invoke-interface {v4}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing RV2 for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5, v3}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->processRendezvous2(Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    .line 59
    .local v0, "hsc":Lcom/subgraph/orchid/HiddenServiceCircuit;
    if-nez v0, :cond_3

    .line 60
    invoke-interface {v4}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    .line 63
    :cond_3
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rendezvous circuit opened for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->call()Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    return-object v0
.end method
