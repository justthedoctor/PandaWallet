.class public final enum Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;
.super Ljava/lang/Enum;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/TransactionConfidence$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

.field public static final enum DEPTH:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

.field public static final enum SEEN_PEERS:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

.field public static final enum TYPE:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .line 167
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    const-string v1, "DEPTH"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->DEPTH:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .line 175
    new-instance v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    const-string v1, "SEEN_PEERS"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->SEEN_PEERS:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->DEPTH:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->SEEN_PEERS:Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->$VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

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
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    const-class v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->$VALUES:[Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/TransactionConfidence$Listener$ChangeReason;

    return-object v0
.end method
