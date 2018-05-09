.class public Lcom/subgraph/orchid/circuits/TapCircuitExtender;
.super Ljava/lang/Object;
.source "TapCircuitExtender.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

.field private final kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

.field private final router:Lcom/subgraph/orchid/Router;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/CircuitExtender;Lcom/subgraph/orchid/Router;)V
    .locals 2
    .param p1, "extender"    # Lcom/subgraph/orchid/circuits/CircuitExtender;
    .param p2, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    .line 20
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    .line 21
    new-instance v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;-><init>(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    .line 22
    return-void
.end method

.method private createRelayExtendCell()Lcom/subgraph/orchid/RelayCell;
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createRelayCell(I)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 49
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 50
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putShort(I)V

    .line 51
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-virtual {v1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->createOnionSkin()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 52
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 53
    return-object v0
.end method

.method private processExtendResponse(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;
    .locals 5
    .param p1, "response"    # Lcom/subgraph/orchid/RelayCell;

    .prologue
    .line 36
    const/16 v3, 0x94

    new-array v0, v3, [B

    .line 37
    .local v0, "handshakeResponse":[B
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/RelayCell;->getByteArray([B)V

    .line 39
    const/16 v3, 0x48

    new-array v1, v3, [B

    .line 40
    .local v1, "keyMaterial":[B
    const/16 v3, 0x14

    new-array v2, v3, [B

    .line 41
    .local v2, "verifyDigest":[B
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-virtual {v3, v0, v1, v2}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->deriveKeysFromHandshakeResponse([B[B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const/4 v3, 0x0

    .line 44
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-virtual {v3, v4, v1, v2}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createNewNode(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public extendTo()Lcom/subgraph/orchid/CircuitNode;
    .locals 5

    .prologue
    .line 25
    sget-object v2, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extending to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v4}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with TAP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->createRelayExtendCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 27
    .local v0, "cell":Lcom/subgraph/orchid/RelayCell;
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v2, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 28
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-virtual {v2, v3, v4}, Lcom/subgraph/orchid/circuits/CircuitExtender;->receiveRelayResponse(ILcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v1

    .line 29
    .local v1, "response":Lcom/subgraph/orchid/RelayCell;
    if-nez v1, :cond_0

    .line 30
    const/4 v2, 0x0

    .line 32
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->processExtendResponse(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    goto :goto_0
.end method
