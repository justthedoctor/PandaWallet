.class public final Lcom/google/bitcoin/protocols/channels/ClientState;
.super Ljava/lang/Object;
.source "ClientState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;,
        Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;,
        Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannels;,
        Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelsOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_paymentchannels_StoredClientPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_StoredClientPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_paymentchannels_StoredClientPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_StoredClientPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1726
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n storedclientpaymentchannel.proto\u0012\u000fpaymentchannels\"\\\n\u001bStoredClientPaymentChannels\u0012=\n\u0008channels\u0018\u0001 \u0003(\u000b2+.paymentchannels.StoredClientPaymentChannel\"\u00b4\u0001\n\u001aStoredClientPaymentChannel\u0012\n\n\u0002id\u0018\u0001 \u0002(\u000c\u0012\u001b\n\u0013contractTransaction\u0018\u0002 \u0002(\u000c\u0012\u0019\n\u0011refundTransaction\u0018\u0003 \u0002(\u000c\u0012\r\n\u0005myKey\u0018\u0004 \u0002(\u000c\u0012\u0011\n\tvalueToMe\u0018\u0005 \u0002(\u0004\u0012\u0012\n\nrefundFees\u0018\u0006 \u0002(\u0004\u0012\u001c\n\u0014closeTransactionHash\u0018\u0007 \u0001(\u000cB4\n%com.google.bitcoin.protocols.channelsB\u000bClientState"

    aput-object v2, v1, v3

    .line 1738
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$1;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$1;-><init>()V

    .line 1758
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1762
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
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/google/bitcoin/protocols/channels/ClientState;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/google/bitcoin/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1721
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
