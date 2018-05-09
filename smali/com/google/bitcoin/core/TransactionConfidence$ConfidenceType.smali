.class public final enum Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
.super Ljava/lang/Enum;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfidenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

.field public static final enum BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

.field public static final enum DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

.field public static final enum PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

.field public static final enum UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    const-string v1, "BUILDING"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 92
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 100
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v4, v6}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 105
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 80
    new-array v0, v6, [Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->$VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->value:I

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->$VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->value:I

    return v0
.end method
