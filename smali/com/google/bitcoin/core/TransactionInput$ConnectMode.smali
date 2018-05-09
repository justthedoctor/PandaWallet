.class public final enum Lcom/google/bitcoin/core/TransactionInput$ConnectMode;
.super Ljava/lang/Enum;
.source "TransactionInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/TransactionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/TransactionInput$ConnectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

.field public static final enum ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

.field public static final enum DISCONNECT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    const-string v1, "DISCONNECT_ON_CONFLICT"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    .line 294
    new-instance v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    const-string v1, "ABORT_ON_CONFLICT"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    .line 292
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->$VALUES:[Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

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
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/TransactionInput$ConnectMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    const-class v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/TransactionInput$ConnectMode;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->$VALUES:[Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/TransactionInput$ConnectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/TransactionInput$ConnectMode;

    return-object v0
.end method
