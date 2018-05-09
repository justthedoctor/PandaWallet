.class public final enum Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
.super Ljava/lang/Enum;
.source "RiskAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/wallet/RiskAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/wallet/RiskAnalysis$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

.field public static final enum NON_FINAL:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

.field public static final enum NON_STANDARD:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

.field public static final enum OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    .line 37
    new-instance v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    const-string v1, "NON_FINAL"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_FINAL:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    .line 38
    new-instance v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    const-string v1, "NON_STANDARD"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_STANDARD:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    sget-object v1, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->OK:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_FINAL:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->NON_STANDARD:Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->$VALUES:[Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/wallet/RiskAnalysis$Result;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->$VALUES:[Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    invoke-virtual {v0}, [Lcom/google/bitcoin/wallet/RiskAnalysis$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/wallet/RiskAnalysis$Result;

    return-object v0
.end method
