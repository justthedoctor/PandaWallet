.class public final enum Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
.super Ljava/lang/Enum;
.source "PaymentChannelClientState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum EXPIRED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum INITIATED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum NEW:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum SAVE_STATE_IN_WALLET:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

.field public static final enum WAITING_FOR_SIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->NEW:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 100
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "INITIATED"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 101
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "WAITING_FOR_SIGNED_REFUND"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 102
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "SAVE_STATE_IN_WALLET"

    invoke-direct {v0, v1, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 103
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "PROVIDE_MULTISIG_CONTRACT_TO_SERVER"

    invoke-direct {v0, v1, v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 104
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 105
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "EXPIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 106
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 98
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->NEW:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->READY:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0}, [Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    return-object v0
.end method
