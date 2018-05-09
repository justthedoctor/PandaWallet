.class public Lcom/google/bitcoin/core/InventoryMessage;
.super Lcom/google/bitcoin/core/ListMessage;
.source "InventoryMessage.java"


# static fields
.field private static final serialVersionUID:J = -0x61d781e289c9f5baL


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/ListMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/ListMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 32
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
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/google/bitcoin/core/ListMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BZZI)V

    .line 49
    return-void
.end method

.method public static varargs with([Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/InventoryMessage;
    .locals 7
    .param p0, "txns"    # [Lcom/google/bitcoin/core/Transaction;

    .prologue
    const/4 v6, 0x0

    .line 65
    array-length v5, p0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 66
    new-instance v3, Lcom/google/bitcoin/core/InventoryMessage;

    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/bitcoin/core/InventoryMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 67
    .local v3, "result":Lcom/google/bitcoin/core/InventoryMessage;
    move-object v0, p0

    .local v0, "arr$":[Lcom/google/bitcoin/core/Transaction;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 68
    .local v4, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/InventoryMessage;->addTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Lcom/google/bitcoin/core/Transaction;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "result":Lcom/google/bitcoin/core/InventoryMessage;
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_0
    move v5, v6

    .line 65
    goto :goto_0

    .line 69
    .restart local v0    # "arr$":[Lcom/google/bitcoin/core/Transaction;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "result":Lcom/google/bitcoin/core/InventoryMessage;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public addBlock(Lcom/google/bitcoin/core/Block;)V
    .locals 3
    .param p1, "block"    # Lcom/google/bitcoin/core/Block;

    .prologue
    .line 56
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem;

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->Block:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/InventoryItem;-><init>(Lcom/google/bitcoin/core/InventoryItem$Type;Lcom/google/bitcoin/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/InventoryMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V

    .line 57
    return-void
.end method

.method public addTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 3
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 60
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem;

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->Transaction:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/InventoryItem;-><init>(Lcom/google/bitcoin/core/InventoryItem$Type;Lcom/google/bitcoin/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/core/InventoryMessage;->addItem(Lcom/google/bitcoin/core/InventoryItem;)V

    .line 61
    return-void
.end method
