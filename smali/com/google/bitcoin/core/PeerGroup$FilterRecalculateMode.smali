.class public final enum Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;
.super Ljava/lang/Enum;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterRecalculateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

.field public static final enum DONT_SEND:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

.field public static final enum FORCE_SEND:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

.field public static final enum SEND_IF_CHANGED:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 850
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    const-string v1, "SEND_IF_CHANGED"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    .line 851
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    const-string v1, "FORCE_SEND"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    .line 852
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    const-string v1, "DONT_SEND"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->DONT_SEND:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    .line 849
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    sget-object v1, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->DONT_SEND:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->$VALUES:[Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

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
    .line 849
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 849
    const-class v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;
    .locals 1

    .prologue
    .line 849
    sget-object v0, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->$VALUES:[Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    return-object v0
.end method
