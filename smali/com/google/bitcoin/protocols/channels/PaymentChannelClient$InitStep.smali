.class final enum Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;
.super Ljava/lang/Enum;
.source "PaymentChannelClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum CHANNEL_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_CHANNEL_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_CONNECTION_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_INITIATE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_REFUND_RETURN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

.field public static final enum WAITING_FOR_VERSION_NEGOTIATION:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "WAITING_FOR_CONNECTION_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CONNECTION_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 68
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "WAITING_FOR_VERSION_NEGOTIATION"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 69
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "WAITING_FOR_INITIATE"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 70
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "WAITING_FOR_REFUND_RETURN"

    invoke-direct {v0, v1, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 71
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "WAITING_FOR_CHANNEL_OPEN"

    invoke-direct {v0, v1, v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 72
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "CHANNEL_OPEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 73
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "WAITING_FOR_CHANNEL_CLOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 74
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    const-string v1, "CHANNEL_CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CONNECTION_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    invoke-virtual {v0}, [Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelClient$InitStep;

    return-object v0
.end method
