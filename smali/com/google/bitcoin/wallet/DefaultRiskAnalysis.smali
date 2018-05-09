.class public Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;
.super Ljava/lang/Object;
.source "DefaultRiskAnalysis.java"

# interfaces
.implements Lcom/google/bitcoin/wallet/RiskAnalysis;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$1;,
        Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;,
        Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;
    }
.end annotation


# static fields
.field public static FACTORY:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;

.field public static final MIN_ANALYSIS_NONDUST_OUTPUT:Ljava/math/BigInteger;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected analyzed:Z

.field protected final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected nonFinal:Lcom/google/bitcoin/core/Transaction;

.field private nonStandard:Lcom/google/bitcoin/core/Transaction;

.field protected final tx:Lcom/google/bitcoin/core/Transaction;

.field protected final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->log:Lorg/slf4j/Logger;

    .line 48
    const-wide/16 v0, 0x222

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->MIN_ANALYSIS_NONDUST_OUTPUT:Ljava/math/BigInteger;

    .line 189
    new-instance v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;

    invoke-direct {v0}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;-><init>()V

    sput-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->FACTORY:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$Analyzer;

    return-void
.end method

.method private constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 60
    iput-object p3, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->dependencies:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "x1"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$1;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;-><init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V

    return-void
.end method

.method private analyzeIsFinal()Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    .locals 8

    .prologue
    .line 78
    iget-object v6, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/bitcoin/core/TransactionConfidence;->getSource()Lcom/google/bitcoin/core/TransactionConfidence$Source;

    move-result-object v6

    sget-object v7, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    if-ne v6, v7, :cond_0

    .line 79
    sget-object v6, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    .line 97
    :goto_0
    return-object v6

    .line 81
    :cond_0
    iget-object v6, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v2

    .line 82
    .local v2, "height":I
    iget-object v6, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v6}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v4

    .line 85
    .local v4, "time":J
    add-int/lit8 v0, v2, 0x1

    .line 87
    .local v0, "adjustedHeight":I
    iget-object v6, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v6, v0, v4, v5}, Lcom/google/bitcoin/core/Transaction;->isFinal(IJ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    iget-object v6, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->tx:Lcom/google/bitcoin/core/Transaction;

    iput-object v6, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonFinal:Lcom/google/bitcoin/core/Transaction;

    .line 89
    sget-object v6, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_FINAL:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    goto :goto_0

    .line 91
    :cond_1
    iget-object v6, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->dependencies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Transaction;

    .line 92
    .local v1, "dep":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v1, v0, v4, v5}, Lcom/google/bitcoin/core/Transaction;->isFinal(IJ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 93
    iput-object v1, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonFinal:Lcom/google/bitcoin/core/Transaction;

    .line 94
    sget-object v6, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_FINAL:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    goto :goto_0

    .line 97
    .end local v1    # "dep":Lcom/google/bitcoin/core/Transaction;
    :cond_3
    sget-object v6, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    goto :goto_0
.end method

.method private analyzeIsStandard()Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    .locals 5

    .prologue
    .line 138
    iget-object v3, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Wallet;->getNetworkParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.pandacoin.production"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    sget-object v3, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    .line 155
    :goto_0
    return-object v3

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v3}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->isStandard(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    move-result-object v2

    .line 142
    .local v2, "ruleViolation":Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    if-eq v2, v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->tx:Lcom/google/bitcoin/core/Transaction;

    iput-object v3, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonStandard:Lcom/google/bitcoin/core/Transaction;

    .line 144
    sget-object v3, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_STANDARD:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    goto :goto_0

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    .line 148
    .local v0, "dep":Lcom/google/bitcoin/core/Transaction;
    invoke-static {v0}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->isStandard(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    move-result-object v2

    .line 149
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    if-eq v2, v3, :cond_2

    .line 150
    iput-object v0, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonStandard:Lcom/google/bitcoin/core/Transaction;

    .line 151
    sget-object v3, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_STANDARD:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    goto :goto_0

    .line 155
    .end local v0    # "dep":Lcom/google/bitcoin/core/Transaction;
    :cond_3
    sget-object v3, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    goto :goto_0
.end method

.method public static isStandard(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 7
    .param p0, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    const-wide/16 v5, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getVersion()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getVersion()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 119
    :cond_0
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->log:Lorg/slf4j/Logger;

    const-string v4, "TX considered non-standard due to unknown version number {}"

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getVersion()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->VERSION:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 132
    :goto_0
    return-object v3

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/TransactionOutput;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 125
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 126
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->MIN_ANALYSIS_NONDUST_OUTPUT:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_2

    .line 127
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->log:Lorg/slf4j/Logger;

    const-string v4, "TX considered non-standard due to output {} being dusty"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->DUST:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    goto :goto_0

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_3
    sget-object v3, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    goto :goto_0
.end method


# virtual methods
.method public analyze()Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    iget-boolean v1, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->analyzed:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 67
    iput-boolean v2, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->analyzed:Z

    .line 69
    invoke-direct {p0}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->analyzeIsFinal()Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    move-result-object v0

    .line 70
    .local v0, "result":Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    sget-object v1, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    if-eq v0, v1, :cond_1

    .line 73
    .end local v0    # "result":Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    :goto_1
    return-object v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    .restart local v0    # "result":Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    :cond_1
    invoke-direct {p0}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->analyzeIsStandard()Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    move-result-object v0

    goto :goto_1
.end method

.method public getNonFinal()Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonFinal:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method public getNonStandard()Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonStandard:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->analyzed:Z

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending risk analysis for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonFinal:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Risky due to non-finality of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonFinal:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonStandard:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Risky due to non-standard tx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;->nonStandard:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    const-string v0, "Non-risky"

    goto :goto_0
.end method
