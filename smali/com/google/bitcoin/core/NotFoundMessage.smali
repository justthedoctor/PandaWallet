.class public Lcom/google/bitcoin/core/NotFoundMessage;
.super Lcom/google/bitcoin/core/InventoryMessage;
.source "NotFoundMessage.java"


# static fields
.field public static MIN_PROTOCOL_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x11171

    sput v0, Lcom/google/bitcoin/core/NotFoundMessage;->MIN_PROTOCOL_VERSION:I

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/InventoryMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/NetworkParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/InventoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/InventoryItem;>;"
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/InventoryMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/bitcoin/core/NotFoundMessage;->items:Ljava/util/List;

    .line 40
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
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/InventoryMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 35
    return-void
.end method
