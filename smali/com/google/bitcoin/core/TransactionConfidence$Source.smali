.class public final enum Lcom/google/bitcoin/core/TransactionConfidence$Source;
.super Ljava/lang/Enum;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/TransactionConfidence$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$Source;

.field public static final enum NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

.field public static final enum SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

.field public static final enum UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/TransactionConfidence$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    .line 131
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/TransactionConfidence$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;->NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    .line 133
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;

    const-string v1, "SELF"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/core/TransactionConfidence$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/bitcoin/core/TransactionConfidence$Source;

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Source;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Source;->NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;->$VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$Source;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/TransactionConfidence$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/TransactionConfidence$Source;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Source;->$VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/TransactionConfidence$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/TransactionConfidence$Source;

    return-object v0
.end method
