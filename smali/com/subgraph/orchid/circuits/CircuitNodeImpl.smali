.class public Lcom/subgraph/orchid/circuits/CircuitNodeImpl;
.super Ljava/lang/Object;
.source "CircuitNodeImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitNode;


# static fields
.field private static final CIRCWINDOW_INCREMENT:I = 0x64

.field private static final CIRCWINDOW_START:I = 0x3e8


# instance fields
.field private final cryptoState:Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

.field private deliverWindow:I

.field private packageWindow:I

.field private final previousNode:Lcom/subgraph/orchid/CircuitNode;

.field private final router:Lcom/subgraph/orchid/Router;

.field private final windowLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/CircuitNode;Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;)V
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;
    .param p2, "previous"    # Lcom/subgraph/orchid/CircuitNode;
    .param p3, "cryptoState"    # Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    .prologue
    const/16 v1, 0x3e8

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->previousNode:Lcom/subgraph/orchid/CircuitNode;

    .line 37
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->router:Lcom/subgraph/orchid/Router;

    .line 38
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->cryptoState:Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->windowLock:Ljava/lang/Object;

    .line 40
    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->packageWindow:I

    .line 41
    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->deliverWindow:I

    .line 42
    return-void
.end method

.method public static createAnonymous(Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;
    .locals 1
    .param p0, "previous"    # Lcom/subgraph/orchid/CircuitNode;
    .param p1, "keyMaterial"    # [B
    .param p2, "verifyDigest"    # [B

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createNode(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    return-object v0
.end method

.method public static createFirstHop(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;
    .locals 1
    .param p0, "r"    # Lcom/subgraph/orchid/Router;
    .param p1, "keyMaterial"    # [B
    .param p2, "verifyDigest"    # [B

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createNode(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    return-object v0
.end method

.method public static createNode(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;
    .locals 2
    .param p0, "r"    # Lcom/subgraph/orchid/Router;
    .param p1, "previous"    # Lcom/subgraph/orchid/CircuitNode;
    .param p2, "keyMaterial"    # [B
    .param p3, "verifyDigest"    # [B

    .prologue
    .line 20
    invoke-static {p2, p3}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->createFromKeyMaterial([B[B)Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    move-result-object v0

    .line 21
    .local v0, "cs":Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;
    new-instance v1, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;

    invoke-direct {v1, p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;-><init>(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/CircuitNode;Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;)V

    return-object v1
.end method

.method private waitForSendWindow(Z)V
    .locals 4
    .param p1, "decrement"    # Z

    .prologue
    .line 101
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->packageWindow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 104
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->windowLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lcom/subgraph/orchid/TorException;

    const-string v3, "Thread interrupted while waiting for circuit send window"

    invoke-direct {v1, v3}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    .line 110
    :try_start_3
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->packageWindow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->packageWindow:I

    .line 111
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    return-void
.end method


# virtual methods
.method public considerSendingSendme()Z
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->deliverWindow:I

    const/16 v2, 0x384

    if-gt v0, v2, :cond_0

    .line 85
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->deliverWindow:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->deliverWindow:I

    .line 86
    const/4 v0, 0x1

    monitor-exit v1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public decrementDeliverWindow()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->deliverWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->deliverWindow:I

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public decryptBackwardCell(Lcom/subgraph/orchid/Cell;)Z
    .locals 1
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->cryptoState:Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->decryptBackwardCell(Lcom/subgraph/orchid/Cell;)Z

    move-result v0

    return v0
.end method

.method public encryptForwardCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 1
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->cryptoState:Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->encryptForwardCell(Lcom/subgraph/orchid/Cell;)V

    .line 54
    return-void
.end method

.method public getForwardDigestBytes()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->cryptoState:Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->getForwardDigestBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getPreviousNode()Lcom/subgraph/orchid/CircuitNode;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->previousNode:Lcom/subgraph/orchid/CircuitNode;

    return-object v0
.end method

.method public getRouter()Lcom/subgraph/orchid/Router;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->router:Lcom/subgraph/orchid/Router;

    return-object v0
.end method

.method public incrementSendWindow()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->windowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->packageWindow:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->packageWindow:I

    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->windowLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v1

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->router:Lcom/subgraph/orchid/Router;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "|()|"

    goto :goto_0
.end method

.method public updateForwardDigest(Lcom/subgraph/orchid/RelayCell;)V
    .locals 1
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->cryptoState:Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->updateForwardDigest(Lcom/subgraph/orchid/Cell;)V

    .line 62
    return-void
.end method

.method public waitForSendWindow()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->waitForSendWindow(Z)V

    .line 94
    return-void
.end method

.method public waitForSendWindowAndDecrement()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->waitForSendWindow(Z)V

    .line 98
    return-void
.end method
