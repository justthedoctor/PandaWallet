.class public Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;
.super Lcom/google/bitcoin/wallet/DefaultCoinSelector;
.source "AllowUnconfirmedCoinSelector.java"


# static fields
.field private static instance:Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/bitcoin/wallet/DefaultCoinSelector;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;->instance:Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;

    invoke-direct {v0}, Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;-><init>()V

    sput-object v0, Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;->instance:Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;

    .line 21
    :cond_0
    sget-object v0, Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;->instance:Lcom/google/bitcoin/wallet/AllowUnconfirmedCoinSelector;

    return-object v0
.end method


# virtual methods
.method protected shouldSelect(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method
