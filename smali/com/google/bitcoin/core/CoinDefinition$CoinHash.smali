.class final enum Lcom/google/bitcoin/core/CoinDefinition$CoinHash;
.super Ljava/lang/Enum;
.source "CoinDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/CoinDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CoinHash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/CoinDefinition$CoinHash;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

.field public static final enum SHA256:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

.field public static final enum scrypt:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    const-string v1, "SHA256"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->SHA256:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    .line 48
    new-instance v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    const-string v1, "scrypt"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->scrypt:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->SHA256:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->scrypt:Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->$VALUES:[Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/CoinDefinition$CoinHash;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/CoinDefinition$CoinHash;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->$VALUES:[Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/CoinDefinition$CoinHash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/CoinDefinition$CoinHash;

    return-object v0
.end method
