.class public Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;
.super Ljava/lang/Object;
.source "RendezvousProcessor.java"


# static fields
.field private static final RENDEZVOUS_COOKIE_LEN:I = 0x14

.field private static final logger:Ljava/util/logging/Logger;

.field private static final random:Lcom/subgraph/orchid/crypto/TorRandom;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/InternalCircuit;

.field private final cookie:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    .line 22
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/InternalCircuit;)V
    .locals 2
    .param p1, "circuit"    # Lcom/subgraph/orchid/InternalCircuit;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    .line 29
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->getBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->cookie:[B

    .line 30
    return-void
.end method

.method private readPeerPublic(Lcom/subgraph/orchid/Cell;)Ljava/math/BigInteger;
    .locals 5
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 72
    const/16 v2, 0x80

    new-array v0, v2, [B

    .line 73
    .local v0, "dhPublic":[B
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 74
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 75
    .local v1, "peerPublic":Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->isValidPublicValue(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    sget-object v2, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal DH public value received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    .line 79
    .end local v1    # "peerPublic":Ljava/math/BigInteger;
    :cond_0
    return-object v1
.end method


# virtual methods
.method establishRendezvous()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    const/16 v4, 0x21

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v5}, Lcom/subgraph/orchid/InternalCircuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lcom/subgraph/orchid/InternalCircuit;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 34
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->cookie:[B

    invoke-interface {v0, v3}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 35
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v3, v0}, Lcom/subgraph/orchid/InternalCircuit;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 36
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v3}, Lcom/subgraph/orchid/InternalCircuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v1

    .line 37
    .local v1, "response":Lcom/subgraph/orchid/RelayCell;
    if-nez v1, :cond_0

    .line 38
    sget-object v3, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    const-string v4, "Timeout waiting for Rendezvous establish response"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 44
    :goto_0
    return v2

    .line 40
    :cond_0
    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_1

    .line 41
    sget-object v3, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response received from Rendezvous establish was not expected acknowledgement, Relay Command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method getCookie()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->cookie:[B

    return-object v0
.end method

.method getRendezvousRouter()Lcom/subgraph/orchid/Router;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0
.end method

.method processRendezvous2(Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 9
    .param p1, "kex"    # Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v6}, Lcom/subgraph/orchid/InternalCircuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 50
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    if-nez v0, :cond_1

    .line 51
    sget-object v6, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    const-string v7, "Timeout waiting for RENDEZVOUS2"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-object v5

    .line 53
    :cond_1
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_2

    .line 54
    sget-object v6, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected Relay cell type received while waiting for RENDEZVOUS2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->readPeerPublic(Lcom/subgraph/orchid/Cell;)Ljava/math/BigInteger;

    move-result-object v3

    .line 58
    .local v3, "peerPublic":Ljava/math/BigInteger;
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->readHandshakeDigest(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    .line 59
    .local v1, "handshakeDigest":Lcom/subgraph/orchid/data/HexDigest;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 62
    const/16 v6, 0x14

    new-array v4, v6, [B

    .line 63
    .local v4, "verifyHash":[B
    const/16 v6, 0x48

    new-array v2, v6, [B

    .line 64
    .local v2, "keyMaterial":[B
    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v6

    invoke-virtual {p1, v3, v6, v2, v4}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->deriveKeysFromDHPublicAndHash(Ljava/math/BigInteger;[B[B[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 65
    sget-object v6, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    const-string v7, "Error deriving session keys while extending to hidden service"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v6}, Lcom/subgraph/orchid/InternalCircuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v6

    invoke-static {v6, v2, v4}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createAnonymous(Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/subgraph/orchid/InternalCircuit;->connectHiddenService(Lcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v5

    goto :goto_0
.end method

.method readHandshakeDigest(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 2
    .param p1, "cell"    # Lcom/subgraph/orchid/Cell;

    .prologue
    .line 83
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 84
    .local v0, "digestBytes":[B
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 85
    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    return-object v1
.end method
