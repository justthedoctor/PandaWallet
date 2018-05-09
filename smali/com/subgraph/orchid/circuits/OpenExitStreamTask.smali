.class public Lcom/subgraph/orchid/circuits/OpenExitStreamTask;
.super Ljava/lang/Object;
.source "OpenExitStreamTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/ExitCircuit;

.field private final exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/ExitCircuit;Lcom/subgraph/orchid/circuits/StreamExitRequest;)V
    .locals 0
    .param p1, "circuit"    # Lcom/subgraph/orchid/ExitCircuit;
    .param p2, "exitRequest"    # Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->circuit:Lcom/subgraph/orchid/ExitCircuit;

    .line 17
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    .line 18
    return-void
.end method

.method private tryOpenExitStream()Lcom/subgraph/orchid/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isAddressTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->circuit:Lcom/subgraph/orchid/ExitCircuit;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getPort()I

    move-result v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getStreamTimeout()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/ExitCircuit;->openExitStream(Lcom/subgraph/orchid/data/IPv4Address;IJ)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->circuit:Lcom/subgraph/orchid/ExitCircuit;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getHostname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getPort()I

    move-result v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->getStreamTimeout()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/ExitCircuit;->openExitStream(Ljava/lang/String;IJ)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 21
    sget-object v1, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to open stream to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->tryOpenExitStream()Lcom/subgraph/orchid/Stream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->setCompletedSuccessfully(Lcom/subgraph/orchid/Stream;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 26
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->setInterrupted()V

    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 28
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->circuit:Lcom/subgraph/orchid/ExitCircuit;

    invoke-interface {v1}, Lcom/subgraph/orchid/ExitCircuit;->markForClose()V

    .line 29
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->setCompletedTimeout()V

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 31
    .local v0, "e":Lcom/subgraph/orchid/StreamConnectFailedException;
    invoke-virtual {v0}, Lcom/subgraph/orchid/StreamConnectFailedException;->isReasonRetryable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->setExitFailed()V

    .line 33
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->circuit:Lcom/subgraph/orchid/ExitCircuit;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/ExitCircuit;->recordFailedExitTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->circuit:Lcom/subgraph/orchid/ExitCircuit;

    invoke-interface {v1}, Lcom/subgraph/orchid/ExitCircuit;->markForClose()V

    .line 36
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/OpenExitStreamTask;->exitRequest:Lcom/subgraph/orchid/circuits/StreamExitRequest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/StreamConnectFailedException;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->setStreamOpenFailure(I)V

    goto :goto_0
.end method
