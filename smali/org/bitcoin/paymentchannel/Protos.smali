.class public final Lorg/bitcoin/paymentchannel/Protos;
.super Ljava/lang/Object;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Error;,
        Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$Settlement;,
        Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;,
        Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideContract;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;,
        Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$Initiate;,
        Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ServerVersion;,
        Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ClientVersion;,
        Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;,
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_paymentchannels_ClientVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ClientVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_Initiate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_Initiate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_ProvideContract_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ProvideContract_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_ProvideRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ProvideRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_ReturnRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ReturnRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_ServerVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ServerVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_Settlement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_Settlement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_TwoWayChannelMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_TwoWayChannelMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_UpdatePayment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_UpdatePayment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8596
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0014paymentchannel.proto\u0012\u000fpaymentchannels\"\u00fe\u0005\n\u0014TwoWayChannelMessage\u0012?\n\u0004type\u0018\u0001 \u0002(\u000e21.paymentchannels.TwoWayChannelMessage.MessageType\u00126\n\u000eclient_version\u0018\u0002 \u0001(\u000b2\u001e.paymentchannels.ClientVersion\u00126\n\u000eserver_version\u0018\u0003 \u0001(\u000b2\u001e.paymentchannels.ServerVersion\u0012+\n\u0008initiate\u0018\u0004 \u0001(\u000b2\u0019.paymentchannels.Initiate\u00126\n\u000eprovide_refund\u0018\u0005 \u0001(\u000b2\u001e.paymentchannels.ProvideRefund\u00124\n\rreturn_refund\u0018\u0006 \u0001(\u000b2\u001d.paymentchannels.ReturnRefund\u0012:\n\u0010"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "provide_contract\u0018\u0007 \u0001(\u000b2 .paymentchannels.ProvideContract\u00126\n\u000eupdate_payment\u0018\u0008 \u0001(\u000b2\u001e.paymentchannels.UpdatePayment\u0012/\n\nsettlement\u0018\t \u0001(\u000b2\u001b.paymentchannels.Settlement\u0012%\n\u0005error\u0018\n \u0001(\u000b2\u0016.paymentchannels.Error\"\u00cd\u0001\n\u000bMessageType\u0012\u0012\n\u000eCLIENT_VERSION\u0010\u0001\u0012\u0012\n\u000eSERVER_VERSION\u0010\u0002\u0012\u000c\n\u0008INITIATE\u0010\u0003\u0012\u0012\n\u000ePROVIDE_REFUND\u0010\u0004\u0012\u0011\n\rRETURN_REFUND\u0010\u0005\u0012\u0014\n\u0010PROVIDE_CONTRACT\u0010\u0006\u0012\u0010\n\u000cCHANNEL_OPEN\u0010\u0007\u0012\u0012\n\u000eUPDATE_PAYMENT\u0010\u0008\u0012\u000f\n\u000bPAYMENT_ACK\u0010\u000b\u0012\t\n\u0005CLOSE\u0010\t\u0012\t\n"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u0005ERROR\u0010\n\"X\n\rClientVersion\u0012\r\n\u0005major\u0018\u0001 \u0002(\u0005\u0012\u0010\n\u0005minor\u0018\u0002 \u0001(\u0005:\u00010\u0012&\n\u001eprevious_channel_contract_hash\u0018\u0003 \u0001(\u000c\"0\n\rServerVersion\u0012\r\n\u0005major\u0018\u0001 \u0002(\u0005\u0012\u0010\n\u0005minor\u0018\u0002 \u0001(\u0005:\u00010\"r\n\u0008Initiate\u0012\u0014\n\u000cmultisig_key\u0018\u0001 \u0002(\u000c\u0012!\n\u0019min_accepted_channel_size\u0018\u0002 \u0002(\u0004\u0012\u0018\n\u0010expire_time_secs\u0018\u0003 \u0002(\u0004\u0012\u0013\n\u000bmin_payment\u0018\u0004 \u0002(\u0004\"1\n\rProvideRefund\u0012\u0014\n\u000cmultisig_key\u0018\u0001 \u0002(\u000c\u0012\n\n\u0002tx\u0018\u0002 \u0002(\u000c\"!\n\u000cReturnRefund\u0012\u0011\n\tsignature\u0018\u0001 \u0002(\u000c\"V\n\u000fProvideContract\u0012\n\n\u0002tx\u0018\u0001 \u0002(\u000c\u00127\n\u000finitial_payment"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u0018\u0002 \u0002(\u000b2\u001e.paymentchannels.UpdatePayment\"?\n\rUpdatePayment\u0012\u001b\n\u0013client_change_value\u0018\u0001 \u0002(\u0004\u0012\u0011\n\tsignature\u0018\u0002 \u0002(\u000c\"\u0018\n\nSettlement\u0012\n\n\u0002tx\u0018\u0003 \u0002(\u000c\"\u00a6\u0002\n\u0005Error\u00125\n\u0004code\u0018\u0001 \u0001(\u000e2 .paymentchannels.Error.ErrorCode:\u0005OTHER\u0012\u0013\n\u000bexplanation\u0018\u0002 \u0001(\t\u0012\u0016\n\u000eexpected_value\u0018\u0003 \u0001(\u0004\"\u00b8\u0001\n\tErrorCode\u0012\u000b\n\u0007TIMEOUT\u0010\u0001\u0012\u0010\n\u000cSYNTAX_ERROR\u0010\u0002\u0012\u0019\n\u0015NO_ACCEPTABLE_VERSION\u0010\u0003\u0012\u0013\n\u000fBAD_TRANSACTION\u0010\u0004\u0012\u0019\n\u0015TIME_WINDOW_TOO_LARGE\u0010\u0005\u0012\u001b\n\u0017CHANNEL_VALUE_TOO_LARGE\u0010\u0006\u0012\u0019\n\u0015MIN_PAYM"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ENT_TOO_LARGE\u0010\u0007\u0012\t\n\u0005OTHER\u0010\u0008B$\n\u001aorg.bitcoin.paymentchannelB\u0006Protos"

    aput-object v3, v1, v2

    .line 8640
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$1;-><init>()V

    .line 8708
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 8712
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$11002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 8591
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
