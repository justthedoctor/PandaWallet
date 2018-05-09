.class public final Lorg/bitcoin/protocols/payments/Protos;
.super Ljava/lang/Object;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentACK;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$Payment;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$X509Certificates;,
        Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$Output;,
        Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_payments_Output_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_Output_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_payments_PaymentACK_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_PaymentACK_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_payments_PaymentDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_PaymentDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_payments_PaymentRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_PaymentRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_payments_Payment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_Payment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_payments_X509Certificates_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_X509Certificates_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5952
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0014paymentrequest.proto\u0012\u0008payments\"+\n\u0006Output\u0012\u0011\n\u0006amount\u0018\u0001 \u0001(\u0004:\u00010\u0012\u000e\n\u0006script\u0018\u0002 \u0002(\u000c\"\u00a3\u0001\n\u000ePaymentDetails\u0012\u0015\n\u0007network\u0018\u0001 \u0001(\t:\u0004main\u0012!\n\u0007outputs\u0018\u0002 \u0003(\u000b2\u0010.payments.Output\u0012\u000c\n\u0004time\u0018\u0003 \u0002(\u0004\u0012\u000f\n\u0007expires\u0018\u0004 \u0001(\u0004\u0012\u000c\n\u0004memo\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bpayment_url\u0018\u0006 \u0001(\t\u0012\u0015\n\rmerchant_data\u0018\u0007 \u0001(\u000c\"\u0095\u0001\n\u000ePaymentRequest\u0012\"\n\u0017payment_details_version\u0018\u0001 \u0001(\r:\u00011\u0012\u0016\n\u0008pki_type\u0018\u0002 \u0001(\t:\u0004none\u0012\u0010\n\u0008pki_data\u0018\u0003 \u0001(\u000c\u0012\"\n\u001aserialized_payment_details\u0018\u0004 \u0002(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\'\n\u0010X"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "509Certificates\u0012\u0013\n\u000bcertificate\u0018\u0001 \u0003(\u000c\"i\n\u0007Payment\u0012\u0015\n\rmerchant_data\u0018\u0001 \u0001(\u000c\u0012\u0014\n\u000ctransactions\u0018\u0002 \u0003(\u000c\u0012#\n\trefund_to\u0018\u0003 \u0003(\u000b2\u0010.payments.Output\u0012\u000c\n\u0004memo\u0018\u0004 \u0001(\t\">\n\nPaymentACK\u0012\"\n\u0007payment\u0018\u0001 \u0002(\u000b2\u0011.payments.Payment\u0012\u000c\n\u0004memo\u0018\u0002 \u0001(\tB(\n\u001eorg.bitcoin.protocols.paymentsB\u0006Protos"

    aput-object v3, v1, v2

    .line 5971
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$1;-><init>()V

    .line 6015
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 6019
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
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 5947
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
