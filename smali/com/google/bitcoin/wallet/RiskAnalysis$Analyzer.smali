.class public interface abstract Lcom/google/bitcoin/wallet/RiskAnalysis$Analyzer;
.super Ljava/lang/Object;
.source "RiskAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/wallet/RiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Analyzer"
.end annotation


# virtual methods
.method public abstract create(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)Lcom/google/bitcoin/wallet/RiskAnalysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)",
            "Lcom/google/bitcoin/wallet/RiskAnalysis;"
        }
    .end annotation
.end method
