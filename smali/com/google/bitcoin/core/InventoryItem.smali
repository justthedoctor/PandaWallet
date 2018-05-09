.class public Lcom/google/bitcoin/core/InventoryItem;
.super Ljava/lang/Object;
.source "InventoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/InventoryItem$Type;
    }
.end annotation


# static fields
.field static final MESSAGE_LENGTH:I = 0x24


# instance fields
.field public final hash:Lcom/google/bitcoin/core/Sha256Hash;

.field public final type:Lcom/google/bitcoin/core/InventoryItem$Type;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/InventoryItem$Type;Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 0
    .param p1, "type"    # Lcom/google/bitcoin/core/InventoryItem$Type;
    .param p2, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 38
    iput-object p2, p0, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    instance-of v0, p1, Lcom/google/bitcoin/core/InventoryItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/bitcoin/core/InventoryItem;

    iget-object v0, v0, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    iget-object v1, p0, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/bitcoin/core/InventoryItem;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    iget-object v1, p0, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/InventoryItem$Type;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/bitcoin/core/InventoryItem;->type:Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/InventoryItem$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/InventoryItem;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
