.class public Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;
.super Ljava/lang/Object;
.source "DefaultRiskAnalysis.java"

# interfaces
.implements Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Analyzer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)",
            "Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$1;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Lcom/google/bitcoin/wallet/RiskAnalysis;
    .locals 1
    .param p1, "x0"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "x1"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "x2"    # Ljava/util/List;

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;->create(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;

    move-result-object v0

    return-object v0
.end method
