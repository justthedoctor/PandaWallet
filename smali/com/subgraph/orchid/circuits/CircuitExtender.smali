.class public Lcom/subgraph/orchid/circuits/CircuitExtender;
.super Ljava/lang/Object;
.source "CircuitExtender.java"


# static fields
.field private static final CIPHER_KEY_LEN:I = 0x10

.field private static final DH_BYTES:I = 0x80

.field private static final PKCS1_OAEP_PADDING_OVERHEAD:I = 0x2a

.field static final TAP_ONIONSKIN_LEN:I = 0xba

.field static final TAP_ONIONSKIN_REPLY_LEN:I = 0x94

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private final ntorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Z)V
    .locals 0
    .param p1, "circuit"    # Lcom/subgraph/orchid/circuits/CircuitImpl;
    .param p2, "ntorEnabled"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 33
    iput-boolean p2, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->ntorEnabled:Z

    .line 34
    return-void
.end method

.method private logProtocolViolation(Ljava/lang/String;Lcom/subgraph/orchid/Router;)V
    .locals 5
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "targetRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 92
    if-nez p2, :cond_0

    const-string v1, "(none)"

    .line 93
    .local v1, "version":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-string v0, "(none)"

    .line 94
    .local v0, "targetName":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol error extending circuit from ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") [version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 95
    return-void

    .line 92
    .end local v0    # "targetName":Ljava/lang/String;
    .end local v1    # "version":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    .restart local v1    # "version":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private nodeToName(Lcom/subgraph/orchid/CircuitNode;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    const-string v1, "(null)"

    .line 102
    :goto_0
    return-object v1

    .line 101
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 102
    .local v0, "router":Lcom/subgraph/orchid/Router;
    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private processCreatedFastCell(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;
    .locals 5
    .param p1, "targetRouter"    # Lcom/subgraph/orchid/Router;
    .param p2, "cell"    # Lcom/subgraph/orchid/Cell;
    .param p3, "kex"    # Lcom/subgraph/orchid/crypto/TorKeyAgreement;

    .prologue
    .line 60
    const/16 v4, 0x28

    new-array v2, v4, [B

    .line 61
    .local v2, "payload":[B
    const/16 v4, 0x48

    new-array v0, v4, [B

    .line 62
    .local v0, "keyMaterial":[B
    const/16 v4, 0x14

    new-array v3, v4, [B

    .line 63
    .local v3, "verifyHash":[B
    invoke-interface {p2, v2}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 64
    invoke-interface {p3, v2, v0, v3}, Lcom/subgraph/orchid/crypto/TorKeyAgreement;->deriveKeysFromHandshakeResponse([B[B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 70
    :goto_0
    return-object v1

    .line 68
    :cond_0
    invoke-static {p1, v0, v3}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createFirstHop(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    .line 69
    .local v1, "node":Lcom/subgraph/orchid/CircuitNode;
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v4, v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->appendNode(Lcom/subgraph/orchid/CircuitNode;)V

    goto :goto_0
.end method

.method private receiveAndProcessCreateFastResponse(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;
    .locals 4
    .param p1, "targetRouter"    # Lcom/subgraph/orchid/Router;
    .param p2, "kex"    # Lcom/subgraph/orchid/crypto/TorKeyAgreement;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->receiveControlCellResponse()Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 52
    .local v0, "cell":Lcom/subgraph/orchid/Cell;
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lcom/subgraph/orchid/TorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout building circuit waiting for CREATE_FAST response from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/subgraph/orchid/circuits/CircuitExtender;->processCreatedFastCell(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    return-object v1
.end method

.method private sendCreateFastCell(Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;)V
    .locals 3
    .param p1, "kex"    # Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 46
    .local v0, "cell":Lcom/subgraph/orchid/Cell;
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->createOnionSkin()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Cell;->putByteArray([B)V

    .line 47
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendCell(Lcom/subgraph/orchid/Cell;)V

    .line 48
    return-void
.end method

.method private useNtor(Lcom/subgraph/orchid/Router;)Z
    .locals 1
    .param p1, "targetRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->ntorEnabled:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNTorOnionKey()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method createFastTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;
    .locals 4
    .param p1, "targetRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 38
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating \'fast\' to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;-><init>()V

    .line 40
    .local v0, "kex":Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->sendCreateFastCell(Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;)V

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->receiveAndProcessCreateFastResponse(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    return-object v1
.end method

.method public createNewNode(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;
    .locals 4
    .param p1, "r"    # Lcom/subgraph/orchid/Router;
    .param p2, "keyMaterial"    # [B
    .param p3, "verifyDigest"    # [B

    .prologue
    .line 136
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createNode(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    .line 137
    .local v0, "node":Lcom/subgraph/orchid/CircuitNode;
    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding new circuit node for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->appendNode(Lcom/subgraph/orchid/CircuitNode;)V

    .line 139
    return-object v0
.end method

.method public createRelayCell(I)Lcom/subgraph/orchid/RelayCell;
    .locals 6
    .param p1, "command"    # I

    .prologue
    .line 144
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;IIIZ)V

    return-object v0
.end method

.method extendTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;
    .locals 4
    .param p1, "targetRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitLength()I

    move-result v2

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Lcom/subgraph/orchid/TorException;

    const-string v3, "Cannot EXTEND an empty circuit"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->useNtor(Lcom/subgraph/orchid/Router;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitExtender;Lcom/subgraph/orchid/Router;)V

    .line 80
    .local v0, "nce":Lcom/subgraph/orchid/circuits/NTorCircuitExtender;
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extendTo()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    .line 83
    .end local v0    # "nce":Lcom/subgraph/orchid/circuits/NTorCircuitExtender;
    :goto_0
    return-object v2

    .line 82
    :cond_1
    new-instance v1, Lcom/subgraph/orchid/circuits/TapCircuitExtender;

    invoke-direct {v1, p0, p1}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitExtender;Lcom/subgraph/orchid/Router;)V

    .line 83
    .local v1, "tce":Lcom/subgraph/orchid/circuits/TapCircuitExtender;
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extendTo()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    goto :goto_0
.end method

.method getFinalRouter()Lcom/subgraph/orchid/Router;
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    .line 149
    .local v0, "node":Lcom/subgraph/orchid/CircuitNode;
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public receiveRelayResponse(ILcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RelayCell;
    .locals 10
    .param p1, "expectedCommand"    # I
    .param p2, "extendTarget"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 112
    iget-object v7, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v7}, Lcom/subgraph/orchid/circuits/CircuitImpl;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 113
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    if-nez v0, :cond_0

    .line 114
    new-instance v7, Lcom/subgraph/orchid/TorException;

    const-string v8, "Timeout building circuit"

    invoke-direct {v7, v8}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 116
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v2

    .line 117
    .local v2, "command":I
    const/16 v7, 0x9

    if-ne v2, v7, :cond_2

    .line 118
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result v7

    and-int/lit16 v1, v7, 0xff

    .line 119
    .local v1, "code":I
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->errorToDescription(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "msg":Ljava/lang/String;
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/subgraph/orchid/circuits/CircuitExtender;->nodeToName(Lcom/subgraph/orchid/CircuitNode;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "source":Ljava/lang/String;
    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    .line 122
    invoke-direct {p0, v6, p2}, Lcom/subgraph/orchid/circuits/CircuitExtender;->logProtocolViolation(Ljava/lang/String;Lcom/subgraph/orchid/Router;)V

    .line 124
    :cond_1
    new-instance v7, Lcom/subgraph/orchid/TorException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error from ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") while extending to ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    .end local v1    # "code":I
    .end local v4    # "msg":Ljava/lang/String;
    .end local v6    # "source":Ljava/lang/String;
    :cond_2
    if-eq v2, p1, :cond_3

    .line 126
    invoke-static {p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "expected":Ljava/lang/String;
    invoke-static {v2}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "received":Ljava/lang/String;
    new-instance v7, Lcom/subgraph/orchid/TorException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received incorrect extend response, expecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 130
    .end local v3    # "expected":Ljava/lang/String;
    .end local v5    # "received":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 1
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 108
    return-void
.end method
