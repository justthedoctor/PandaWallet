.class public Lcom/subgraph/orchid/circuits/NTorCircuitExtender;
.super Ljava/lang/Object;
.source "NTorCircuitExtender.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

.field private final kex:Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;

.field private final router:Lcom/subgraph/orchid/Router;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/CircuitExtender;Lcom/subgraph/orchid/Router;)V
    .locals 3
    .param p1, "extender"    # Lcom/subgraph/orchid/circuits/CircuitExtender;
    .param p2, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    .line 21
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    .line 22
    new-instance v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;

    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getNTorOnionKey()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;-><init>(Lcom/subgraph/orchid/data/HexDigest;[B)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;

    .line 23
    return-void
.end method

.method private createExtend2Cell([B)Lcom/subgraph/orchid/RelayCell;
    .locals 4
    .param p1, "ntorOnionskin"    # [B

    .prologue
    const/4 v3, 0x2

    .line 55
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createRelayCell(I)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 57
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    invoke-interface {v0, v3}, Lcom/subgraph/orchid/RelayCell;->putByte(I)V

    .line 59
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByte(I)V

    .line 60
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByte(I)V

    .line 61
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 62
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putShort(I)V

    .line 64
    invoke-interface {v0, v3}, Lcom/subgraph/orchid/RelayCell;->putByte(I)V

    .line 65
    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByte(I)V

    .line 66
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 68
    invoke-interface {v0, v3}, Lcom/subgraph/orchid/RelayCell;->putShort(I)V

    .line 69
    array-length v1, p1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putShort(I)V

    .line 70
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 71
    return-object v0
.end method

.method private createExtendCell([B[B)Lcom/subgraph/orchid/RelayCell;
    .locals 5
    .param p1, "ntorOnionskin"    # [B
    .param p2, "ntorMagic"    # [B

    .prologue
    .line 75
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createRelayCell(I)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 76
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v3}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 77
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v3}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/subgraph/orchid/RelayCell;->putShort(I)V

    .line 78
    array-length v3, p1

    array-length v4, p2

    add-int/2addr v3, v4

    rsub-int v2, v3, 0xba

    .line 79
    .local v2, "paddingLength":I
    new-array v1, v2, [B

    .line 80
    .local v1, "padding":[B
    invoke-interface {v0, p2}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 81
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 82
    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 83
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v3}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 84
    return-object v0
.end method

.method private extendWithExtend2([B)Lcom/subgraph/orchid/CircuitNode;
    .locals 5
    .param p1, "onion"    # [B

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->createExtend2Cell([B)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 38
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v2, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 39
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-virtual {v2, v3, v4}, Lcom/subgraph/orchid/circuits/CircuitExtender;->receiveRelayResponse(ILcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v1

    .line 40
    .local v1, "response":Lcom/subgraph/orchid/RelayCell;
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->processExtended2(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    return-object v2
.end method

.method private extendWithTunneledExtend([B)Lcom/subgraph/orchid/CircuitNode;
    .locals 5
    .param p1, "onion"    # [B

    .prologue
    .line 44
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;

    invoke-virtual {v2}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->getNtorCreateMagic()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->createExtendCell([B[B)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 45
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v2, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 46
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-virtual {v2, v3, v4}, Lcom/subgraph/orchid/circuits/CircuitExtender;->receiveRelayResponse(ILcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v1

    .line 47
    .local v1, "response":Lcom/subgraph/orchid/RelayCell;
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->processExtended(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    return-object v2
.end method

.method private finalRouterSupportsExtend2()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->getFinalRouter()Lcom/subgraph/orchid/Router;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->getNTorOnionKey()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processExtended(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;
    .locals 2
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 88
    const/16 v1, 0x94

    new-array v0, v1, [B

    .line 89
    .local v0, "payload":[B
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/RelayCell;->getByteArray([B)V

    .line 91
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->processPayload([B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    return-object v1
.end method

.method private processExtended2(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;
    .locals 4
    .param p1, "cell"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 96
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getShort()I

    move-result v1

    .line 97
    .local v1, "payloadLength":I
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 98
    new-instance v2, Lcom/subgraph/orchid/TorException;

    const-string v3, "Incorrect payload length value in RELAY_EXTENED2 cell"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    new-array v0, v1, [B

    .line 101
    .local v0, "payload":[B
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/RelayCell;->getByteArray([B)V

    .line 103
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->processPayload([B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    return-object v2
.end method

.method private processPayload([B)Lcom/subgraph/orchid/CircuitNode;
    .locals 4
    .param p1, "payload"    # [B

    .prologue
    .line 107
    const/16 v2, 0x48

    new-array v0, v2, [B

    .line 108
    .local v0, "keyMaterial":[B
    const/16 v2, 0x14

    new-array v1, v2, [B

    .line 109
    .local v1, "verifyDigest":[B
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;

    invoke-virtual {v2, p1, v0, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->deriveKeysFromHandshakeResponse([B[B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 112
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-virtual {v2, v3, v0, v1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createNewNode(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method extendTo()Lcom/subgraph/orchid/CircuitNode;
    .locals 4

    .prologue
    .line 26
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;

    invoke-virtual {v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->createOnionSkin()[B

    move-result-object v0

    .line 27
    .local v0, "onion":[B
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->finalRouterSupportsExtend2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extending circuit to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v3}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with NTor inside RELAY_EXTEND2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extendWithExtend2([B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 31
    :cond_0
    sget-object v1, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extending circuit to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v3}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with NTor inside RELAY_EXTEND"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extendWithTunneledExtend([B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    goto :goto_0
.end method
