.class public final enum Lcom/google/bitcoin/core/InventoryItem$Type;
.super Ljava/lang/Enum;
.source "InventoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/InventoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/InventoryItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/InventoryItem$Type;

.field public static final enum Block:Lcom/google/bitcoin/core/InventoryItem$Type;

.field public static final enum Error:Lcom/google/bitcoin/core/InventoryItem$Type;

.field public static final enum FilteredBlock:Lcom/google/bitcoin/core/InventoryItem$Type;

.field public static final enum Transaction:Lcom/google/bitcoin/core/InventoryItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem$Type;

    const-string v1, "Error"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/InventoryItem$Type;->Error:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 28
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem$Type;

    const-string v1, "Transaction"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/InventoryItem$Type;->Transaction:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 29
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem$Type;

    const-string v1, "Block"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/InventoryItem$Type;->Block:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 30
    new-instance v0, Lcom/google/bitcoin/core/InventoryItem$Type;

    const-string v1, "FilteredBlock"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/core/InventoryItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/InventoryItem$Type;->FilteredBlock:Lcom/google/bitcoin/core/InventoryItem$Type;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/bitcoin/core/InventoryItem$Type;

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->Error:Lcom/google/bitcoin/core/InventoryItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->Transaction:Lcom/google/bitcoin/core/InventoryItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->Block:Lcom/google/bitcoin/core/InventoryItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/core/InventoryItem$Type;->FilteredBlock:Lcom/google/bitcoin/core/InventoryItem$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/bitcoin/core/InventoryItem$Type;->$VALUES:[Lcom/google/bitcoin/core/InventoryItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/InventoryItem$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/InventoryItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/InventoryItem$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/bitcoin/core/InventoryItem$Type;->$VALUES:[Lcom/google/bitcoin/core/InventoryItem$Type;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/InventoryItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/InventoryItem$Type;

    return-object v0
.end method
