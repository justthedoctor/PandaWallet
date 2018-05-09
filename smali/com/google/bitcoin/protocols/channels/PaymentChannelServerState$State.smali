.class public final enum Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;
.super Ljava/lang/Enum;
.source "PaymentChannelServerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field public static final enum CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field public static final enum CLOSING:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field public static final enum ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field public static final enum READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field public static final enum WAITING_FOR_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field public static final enum WAITING_FOR_MULTISIG_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

.field public static final enum WAITING_FOR_REFUND_TRANSACTION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    const-string v1, "WAITING_FOR_REFUND_TRANSACTION"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 77
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    const-string v1, "WAITING_FOR_MULTISIG_CONTRACT"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 78
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    const-string v1, "WAITING_FOR_MULTISIG_ACCEPTANCE"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 79
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 80
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 81
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 82
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0}, [Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelServerState$State;

    return-object v0
.end method
