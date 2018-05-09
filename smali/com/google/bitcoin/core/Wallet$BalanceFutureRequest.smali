.class Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;
.super Ljava/lang/Object;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BalanceFutureRequest"
.end annotation


# instance fields
.field public future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/google/bitcoin/core/Wallet$BalanceType;

.field public value:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/Wallet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/Wallet$1;

    .prologue
    .line 3170
    invoke-direct {p0}, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;-><init>()V

    return-void
.end method
