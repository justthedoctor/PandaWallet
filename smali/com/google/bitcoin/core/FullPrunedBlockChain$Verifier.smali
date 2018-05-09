.class Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;
.super Ljava/lang/Object;
.source "FullPrunedBlockChain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/FullPrunedBlockChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Verifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/bitcoin/core/VerificationException;",
        ">;"
    }
.end annotation


# instance fields
.field final enforcePayToScriptHash:Z

.field final prevOutScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;"
        }
    .end annotation
.end field

.field final tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Z)V
    .locals 0
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "enforcePayToScriptHash"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Transaction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "prevOutScripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->tx:Lcom/google/bitcoin/core/Transaction;

    iput-object p2, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->prevOutScripts:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->enforcePayToScriptHash:Z

    .line 126
    return-void
.end method


# virtual methods
.method public call()Lcom/google/bitcoin/core/VerificationException;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->prevOutScripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    .line 133
    .local v8, "prevOutIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/bitcoin/script/Script;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionInput;->getScriptSig()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->tx:Lcom/google/bitcoin/core/Transaction;

    int-to-long v2, v7

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/script/Script;

    iget-boolean v5, p0, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->enforcePayToScriptHash:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/script/Script;->correctlySpends(Lcom/google/bitcoin/core/Transaction;JLcom/google/bitcoin/script/Script;Z)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 136
    .end local v7    # "index":I
    .end local v8    # "prevOutIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/bitcoin/script/Script;>;"
    :catch_0
    move-exception v6

    .line 139
    :goto_1
    return-object v6

    .restart local v7    # "index":I
    .restart local v8    # "prevOutIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/bitcoin/script/Script;>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/bitcoin/core/FullPrunedBlockChain$Verifier;->call()Lcom/google/bitcoin/core/VerificationException;

    move-result-object v0

    return-object v0
.end method
