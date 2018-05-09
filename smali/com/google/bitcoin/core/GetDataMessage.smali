.class public Lcom/google/bitcoin/core/GetDataMessage;
.super Lcom/google/bitcoin/core/ListMessage;
.source "GetDataMessage.java"


# static fields
.field private static final serialVersionUID:J = 0x263a984f8b8ece3fL


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ListMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/ListMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "parseLazy"    # Z
    .param p4, "parseRetain"    # Z
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/google/bitcoin/core/ListMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V

    .line 45
    return-void
.end method


# virtual methods
.method public addBlock(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 2
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 56
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem;

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->Block:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-direct {v0, v1, p1}, Lcom/google/bitcoin/core/InventoryItem;-><init>(Lcom/google/bitcoin/core/InventoryItem$Type;Lcom/google/bitcoin/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/GetDataMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V

    .line 57
    return-void
.end method

.method public addTransaction(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 2
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 52
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem;

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->Transaction:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-direct {v0, v1, p1}, Lcom/google/bitcoin/core/InventoryItem;-><init>(Lcom/google/bitcoin/core/InventoryItem$Type;Lcom/google/bitcoin/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/GetDataMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V

    .line 53
    return-void
.end method
