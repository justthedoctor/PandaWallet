.class public final enum Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
.super Ljava/lang/Enum;
.source "PaymentChannelCloseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum CHANNEL_EXHAUSTED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum CLIENT_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum CONNECTION_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum NO_ACCEPTABLE_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum REMOTE_SENT_ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum SERVER_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum SERVER_REQUESTED_TOO_MUCH_VALUE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

.field public static final enum TIME_WINDOW_TOO_LARGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "NO_ACCEPTABLE_VERSION"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 28
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "TIME_WINDOW_TOO_LARGE"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->TIME_WINDOW_TOO_LARGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 30
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "SERVER_REQUESTED_TOO_MUCH_VALUE"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 32
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "CHANNEL_EXHAUSTED"

    invoke-direct {v0, v1, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CHANNEL_EXHAUSTED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 43
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "CLIENT_REQUESTED_CLOSE"

    invoke-direct {v0, v1, v7}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 55
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "SERVER_REQUESTED_CLOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 58
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "REMOTE_SENT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 60
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "REMOTE_SENT_INVALID_MESSAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 63
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v1, "CONNECTION_CLOSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->TIME_WINDOW_TOO_LARGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CHANNEL_EXHAUSTED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-virtual {v0}, [Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object v0
.end method
