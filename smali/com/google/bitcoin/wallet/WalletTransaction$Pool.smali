.class public final enum Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
.super Ljava/lang/Enum;
.source "WalletTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/wallet/WalletTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/wallet/WalletTransaction$Pool;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

.field public static final enum DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

.field public static final enum PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

.field public static final enum SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

.field public static final enum UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    const-string v1, "UNSPENT"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .line 29
    new-instance v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    const-string v1, "SPENT"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .line 30
    new-instance v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .line 31
    new-instance v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->$VALUES:[Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->$VALUES:[Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v0}, [Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    return-object v0
.end method
