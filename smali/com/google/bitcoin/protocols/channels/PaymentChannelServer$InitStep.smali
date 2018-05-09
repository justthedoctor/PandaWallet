.class final enum Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;
.super Ljava/lang/Enum;
.source "PaymentChannelServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_CLIENT_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

.field public static final enum WAITING_ON_UNSIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    const-string v1, "WAITING_ON_CLIENT_VERSION"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 54
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    const-string v1, "WAITING_ON_UNSIGNED_REFUND"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 55
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    const-string v1, "WAITING_ON_CONTRACT"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 56
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    const-string v1, "WAITING_ON_MULTISIG_ACCEPTANCE"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 57
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    const-string v1, "CHANNEL_OPEN"

    invoke-direct {v0, v1, v6}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_MULTISIG_ACCEPTANCE:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->$VALUES:[Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    invoke-virtual {v0}, [Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$InitStep;

    return-object v0
.end method
