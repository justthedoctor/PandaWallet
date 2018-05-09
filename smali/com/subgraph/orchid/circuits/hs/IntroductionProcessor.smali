.class public Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;
.super Ljava/lang/Object;
.source "IntroductionProcessor.java"


# static fields
.field private static final INTRODUCTION_PROTOCOL_VERSION:I = 0x3

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

.field private final introductionCircuit:Lcom/subgraph/orchid/Circuit;

.field private final introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 0
    .param p1, "hiddenService"    # Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .param p2, "introductionCircuit"    # Lcom/subgraph/orchid/Circuit;
    .param p3, "introductionPoint"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 23
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    .line 24
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .line 25
    return-void
.end method

.method private addAuthentication(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v0

    .line 88
    .local v0, "cookie":Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getAuthTypeByte()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    array-length v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private createIntroductionBuffer(ILcom/subgraph/orchid/Router;[B[B)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "timestamp"    # I
    .param p2, "rr"    # Lcom/subgraph/orchid/Router;
    .param p3, "cookie"    # [B
    .param p4, "dhPublic"    # [B

    .prologue
    .line 65
    const/16 v5, 0x200

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v1

    .line 67
    .local v1, "rpAddress":[B
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v5

    int-to-short v4, v5

    .line 68
    .local v4, "rpPort":S
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v2

    .line 69
    .local v2, "rpIdentity":[B
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRawBytes()[B

    move-result-object v3

    .line 71
    .local v3, "rpOnionKey":[B
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->addAuthentication(Ljava/nio/ByteBuffer;)V

    .line 74
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    array-length v5, v3

    int-to-short v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    return-object v0
.end method

.method private createIntroductionPayload(Lcom/subgraph/orchid/Router;[B[BLcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 5
    .param p1, "rendezvousRouter"    # Lcom/subgraph/orchid/Router;
    .param p2, "publicKeyBytes"    # [B
    .param p3, "rendezvousCookie"    # [B
    .param p4, "encryptionKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->createIntroductionBuffer(ILcom/subgraph/orchid/Router;[B[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0, p4}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->encryptIntroductionBuffer(Ljava/nio/ByteBuffer;Lcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object v1

    return-object v1
.end method

.method private encryptIntroductionBuffer(Ljava/nio/ByteBuffer;Lcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "key"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 99
    .local v1, "len":I
    new-array v2, v1, [B

    .line 100
    .local v2, "payload":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 101
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 102
    new-instance v0, Lcom/subgraph/orchid/crypto/HybridEncryption;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/HybridEncryption;-><init>()V

    .line 103
    .local v0, "enc":Lcom/subgraph/orchid/crypto/HybridEncryption;
    invoke-virtual {v0, v2, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encrypt([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    return-object v0
.end method

.method markCircuitForClose()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    .line 57
    return-void
.end method

.method sendIntroduce(Lcom/subgraph/orchid/crypto/TorPublicKey;[B[BLcom/subgraph/orchid/Router;)Z
    .locals 8
    .param p1, "permanentKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;
    .param p2, "publicKeyBytes"    # [B
    .param p3, "rendezvousCookie"    # [B
    .param p4, "rendezvousRouter"    # Lcom/subgraph/orchid/Router;

    .prologue
    const/4 v4, 0x0

    .line 32
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    const/16 v6, 0x22

    iget-object v7, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {v7}, Lcom/subgraph/orchid/Circuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lcom/subgraph/orchid/Circuit;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 34
    .local v0, "introduceCell":Lcom/subgraph/orchid/RelayCell;
    invoke-direct {p0, p4, p2, p3, p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->createIntroductionPayload(Lcom/subgraph/orchid/Router;[B[BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object v1

    .line 35
    .local v1, "payload":[B
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-virtual {v5}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v3

    .line 36
    .local v3, "serviceKey":Lcom/subgraph/orchid/crypto/TorPublicKey;
    invoke-virtual {v3}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 37
    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 38
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {v5, v0}, Lcom/subgraph/orchid/Circuit;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 40
    iget-object v5, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {v5}, Lcom/subgraph/orchid/Circuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v2

    .line 41
    .local v2, "response":Lcom/subgraph/orchid/RelayCell;
    if-nez v2, :cond_0

    .line 42
    sget-object v5, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    const-string v6, "Timeout waiting for response to INTRODUCE1 cell"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 51
    :goto_0
    return v4

    .line 44
    :cond_0
    invoke-interface {v2}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_1

    .line 45
    sget-object v5, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected relay cell type received waiting for response to INTRODUCE1 cell: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v2}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v5

    if-nez v5, :cond_2

    .line 48
    const/4 v4, 0x1

    goto :goto_0

    .line 50
    :cond_2
    sget-object v5, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTRODUCE_ACK indicates that introduction was not forwarded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
