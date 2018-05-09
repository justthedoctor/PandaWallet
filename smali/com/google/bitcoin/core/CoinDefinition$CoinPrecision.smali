.class public final enum Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;
.super Ljava/lang/Enum;
.source "CoinDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/CoinDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoinPrecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

.field public static final enum Coins:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

.field public static final enum Millicoins:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    const-string v1, "Coins"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->Coins:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    .line 33
    new-instance v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    const-string v1, "Millicoins"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->Millicoins:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->Coins:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->Millicoins:Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->$VALUES:[Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->$VALUES:[Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/CoinDefinition$CoinPrecision;

    return-object v0
.end method
