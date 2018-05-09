.class public final enum Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;
.super Ljava/lang/Enum;
.source "DefaultRiskAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/wallet/DefaultRiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleViolation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum DUST:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum NONE:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

.field public static final enum VERSION:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 106
    new-instance v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    const-string v1, "VERSION"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->VERSION:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 107
    new-instance v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    const-string v1, "DUST"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->DUST:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    sget-object v1, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->VERSION:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->DUST:Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->$VALUES:[Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->$VALUES:[Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    invoke-virtual {v0}, [Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object v0
.end method
