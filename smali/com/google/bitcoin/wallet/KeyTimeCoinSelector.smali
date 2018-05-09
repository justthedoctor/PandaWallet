.class public Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;
.super Ljava/lang/Object;
.source "KeyTimeCoinSelector.java"

# interfaces
.implements Lcom/google/bitcoin/wallet/CoinSelector;


# static fields
.field public static final MAX_SIMULTANEOUS_INPUTS:I = 0x258

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final ignorePending:Z

.field private final unixTimeSeconds:J

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;JZ)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "unixTimeSeconds"    # J
    .param p4, "ignorePending"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p2, p0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->unixTimeSeconds:J

    .line 46
    iput-object p1, p0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 47
    iput-boolean p4, p0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->ignorePending:Z

    .line 48
    return-void
.end method

.method private isConfirmed(Lcom/google/bitcoin/core/TransactionOutput;)Z
    .locals 2
    .param p1, "output"    # Lcom/google/bitcoin/core/TransactionOutput;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionOutput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;
    .locals 11
    .param p1, "target"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;)",
            "Lcom/google/bitcoin/wallet/CoinSelection;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 54
    .local v2, "gathered":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 55
    .local v6, "valueGathered":Ljava/math/BigInteger;
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/TransactionOutput;

    .line 56
    .local v4, "output":Lcom/google/bitcoin/core/TransactionOutput;
    iget-boolean v7, p0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->ignorePending:Z

    if-eqz v7, :cond_1

    invoke-direct {p0, v4}, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->isConfirmed(Lcom/google/bitcoin/core/TransactionOutput;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    :cond_1
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v5

    .line 62
    .local v5, "scriptPubKey":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    iget-object v7, p0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->getPubKey()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/bitcoin/core/Wallet;->findKeyFromPubKey([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    .line 70
    .local v0, "controllingKey":Lcom/google/bitcoin/core/ECKey;
    :goto_1
    const-string v7, "Coin selector given output as candidate for which we lack the key"

    invoke-static {v0, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->unixTimeSeconds:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 73
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 74
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/16 v8, 0x258

    if-lt v7, v8, :cond_0

    .line 76
    sget-object v7, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->log:Lorg/slf4j/Logger;

    const-string v8, "Reached {} inputs, going further would yield a tx that is too large, stopping here."

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .end local v0    # "controllingKey":Lcom/google/bitcoin/core/ECKey;
    .end local v4    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v5    # "scriptPubKey":Lcom/google/bitcoin/script/Script;
    :cond_2
    new-instance v7, Lcom/google/bitcoin/wallet/CoinSelection;

    invoke-direct {v7, v6, v2}, Lcom/google/bitcoin/wallet/CoinSelection;-><init>(Ljava/math/BigInteger;Ljava/util/Collection;)V

    return-object v7

    .line 64
    .restart local v4    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .restart local v5    # "scriptPubKey":Lcom/google/bitcoin/script/Script;
    :cond_3
    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    iget-object v7, p0, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/bitcoin/core/Wallet;->findKeyFromPubHash([B)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    .restart local v0    # "controllingKey":Lcom/google/bitcoin/core/ECKey;
    goto :goto_1

    .line 67
    .end local v0    # "controllingKey":Lcom/google/bitcoin/core/ECKey;
    :cond_4
    sget-object v7, Lcom/google/bitcoin/wallet/KeyTimeCoinSelector;->log:Lorg/slf4j/Logger;

    const-string v8, "Skipping tx output {} because it\'s not of simple form."

    invoke-interface {v7, v8, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v2    # "gathered":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v5    # "scriptPubKey":Lcom/google/bitcoin/script/Script;
    .end local v6    # "valueGathered":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lcom/google/bitcoin/core/ScriptException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
