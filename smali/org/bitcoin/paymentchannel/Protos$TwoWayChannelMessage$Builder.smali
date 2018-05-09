.class public final Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

.field private errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            "Lorg/bitcoin/paymentchannel/Protos$Error$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private error_:Lorg/bitcoin/paymentchannel/Protos$Error;

.field private initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

.field private provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

.field private provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

.field private returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

.field private serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

.field private settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

.field private type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field private updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1444
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1504
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1657
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1774
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1891
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2008
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2125
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2242
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2359
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2476
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1131
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->maybeForceBuilderInitialization()V

    .line 1132
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1444
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1504
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1657
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1774
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1891
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2008
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2125
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2242
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2359
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2476
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1137
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->maybeForceBuilderInitialization()V

    .line 1138
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1153
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;-><init>()V

    return-object v0
.end method

.method private getClientVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1645
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1646
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1651
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1653
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1119
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getErrorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            "Lorg/bitcoin/paymentchannel/Protos$Error$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2581
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2582
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2587
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2589
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getInitiateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1879
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1880
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1885
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1887
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getProvideContractFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2230
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2231
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2238
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getProvideRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1996
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1997
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2002
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2004
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getReturnRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2113
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2114
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2121
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getServerVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1762
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1763
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1768
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1770
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getSettlementFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2464
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2465
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2472
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getUpdatePaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2347
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2348
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2353
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2355
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1140
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getClientVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1142
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getServerVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1143
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getInitiateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1144
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1145
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getReturnRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1146
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideContractFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1147
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getUpdatePaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1148
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlementFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1149
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getErrorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1151
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 2

    .prologue
    .line 1231
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    .line 1232
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1235
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 5

    .prologue
    .line 1239
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 1240
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1241
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1242
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1243
    or-int/lit8 v2, v2, 0x1

    .line 1245
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1246
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1247
    or-int/lit8 v2, v2, 0x2

    .line 1249
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_a

    .line 1250
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1254
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1255
    or-int/lit8 v2, v2, 0x4

    .line 1257
    :cond_2
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_b

    .line 1258
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$902(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1262
    :goto_1
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1263
    or-int/lit8 v2, v2, 0x8

    .line 1265
    :cond_3
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_c

    .line 1266
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1002(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1270
    :goto_2
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1271
    or-int/lit8 v2, v2, 0x10

    .line 1273
    :cond_4
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_d

    .line 1274
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1102(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1278
    :goto_3
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1279
    or-int/lit8 v2, v2, 0x20

    .line 1281
    :cond_5
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_e

    .line 1282
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1202(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 1286
    :goto_4
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1287
    or-int/lit8 v2, v2, 0x40

    .line 1289
    :cond_6
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_f

    .line 1290
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1302(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 1294
    :goto_5
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1295
    or-int/lit16 v2, v2, 0x80

    .line 1297
    :cond_7
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_10

    .line 1298
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1402(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 1302
    :goto_6
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1303
    or-int/lit16 v2, v2, 0x100

    .line 1305
    :cond_8
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_11

    .line 1306
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1502(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 1310
    :goto_7
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1311
    or-int/lit16 v2, v2, 0x200

    .line 1313
    :cond_9
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_12

    .line 1314
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1602(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1318
    :goto_8
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;I)I

    .line 1319
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onBuilt()V

    .line 1320
    return-object v1

    .line 1252
    :cond_a
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    goto/16 :goto_0

    .line 1260
    :cond_b
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$902(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    goto/16 :goto_1

    .line 1268
    :cond_c
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1002(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate;

    goto/16 :goto_2

    .line 1276
    :cond_d
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1102(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    goto/16 :goto_3

    .line 1284
    :cond_e
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1202(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    goto/16 :goto_4

    .line 1292
    :cond_f
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1302(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    goto/16 :goto_5

    .line 1300
    :cond_10
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1402(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto/16 :goto_6

    .line 1308
    :cond_11
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1502(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement;

    goto :goto_7

    .line 1316
    :cond_12
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1602(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error;

    goto :goto_8
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1158
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1159
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1160
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1161
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1165
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1166
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1167
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1171
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1172
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 1173
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1177
    :goto_2
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1178
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 1179
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1183
    :goto_3
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1184
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_4

    .line 1185
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 1189
    :goto_4
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1190
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    .line 1191
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 1195
    :goto_5
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1196
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    .line 1197
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 1201
    :goto_6
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1202
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    .line 1203
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 1207
    :goto_7
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1208
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_8

    .line 1209
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1213
    :goto_8
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1214
    return-object p0

    .line 1163
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_0

    .line 1169
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_1

    .line 1175
    :cond_2
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2

    .line 1181
    :cond_3
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_3

    .line 1187
    :cond_4
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_4

    .line 1193
    :cond_5
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_5

    .line 1199
    :cond_6
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_6

    .line 1205
    :cond_7
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_7

    .line 1211
    :cond_8
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_8
.end method

.method public clearClientVersion()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1601
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1602
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1606
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1607
    return-object p0

    .line 1604
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearError()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2549
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2550
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2554
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2555
    return-object p0

    .line 2552
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearInitiate()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1847
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1848
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1852
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1853
    return-object p0

    .line 1850
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearProvideContract()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 2197
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2198
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2199
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2203
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2204
    return-object p0

    .line 2201
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearProvideRefund()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1964
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1965
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1969
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1970
    return-object p0

    .line 1967
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearReturnRefund()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2081
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2082
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2086
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2087
    return-object p0

    .line 2084
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearServerVersion()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1730
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1731
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1735
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1736
    return-object p0

    .line 1733
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSettlement()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2432
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2433
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2437
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2438
    return-object p0

    .line 2435
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1498
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1499
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1500
    return-object p0
.end method

.method public clearUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2315
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2316
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2320
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2321
    return-object p0

    .line 2318
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2

    .prologue
    .line 1218
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1526
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1528
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    goto :goto_0
.end method

.method public getClientVersionBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 1617
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1618
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1619
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getClientVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    return-object v0
.end method

.method public getClientVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;

    .line 1632
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1

    .prologue
    .line 1227
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1223
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2490
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2492
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    goto :goto_0
.end method

.method public getErrorBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .prologue
    .line 2561
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2562
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2563
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getErrorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    return-object v0
.end method

.method public getErrorOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;

    .line 2572
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    goto :goto_0
.end method

.method public getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1790
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    goto :goto_0
.end method

.method public getInitiateBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .prologue
    .line 1859
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1860
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1861
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getInitiateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    return-object v0
.end method

.method public getInitiateOrBuilder()Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;

    .line 1870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    goto :goto_0
.end method

.method public getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2139
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    goto :goto_0
.end method

.method public getProvideContractBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 2210
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2211
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2212
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideContractFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    return-object v0
.end method

.method public getProvideContractOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;

    .line 2221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    goto :goto_0
.end method

.method public getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1905
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1907
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    goto :goto_0
.end method

.method public getProvideRefundBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .prologue
    .line 1976
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1977
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1978
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    return-object v0
.end method

.method public getProvideRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;

    .line 1987
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    goto :goto_0
.end method

.method public getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2022
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2024
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    goto :goto_0
.end method

.method public getReturnRefundBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .prologue
    .line 2093
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2094
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2095
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getReturnRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    return-object v0
.end method

.method public getReturnRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;

    .line 2104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    goto :goto_0
.end method

.method public getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1671
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1673
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    goto :goto_0
.end method

.method public getServerVersionBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 1742
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1744
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getServerVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    return-object v0
.end method

.method public getServerVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;

    .line 1753
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    goto :goto_0
.end method

.method public getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2373
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2375
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    goto :goto_0
.end method

.method public getSettlementBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .prologue
    .line 2444
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2445
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2446
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlementFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    return-object v0
.end method

.method public getSettlementOrBuilder()Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;

    .line 2455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    goto :goto_0
.end method

.method public getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object v0
.end method

.method public getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2256
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0
.end method

.method public getUpdatePaymentBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 2327
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2328
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2329
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getUpdatePaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    return-object v0
.end method

.method public getUpdatePaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2336
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;

    .line 2338
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0
.end method

.method public hasClientVersion()Z
    .locals 2

    .prologue
    .line 1515
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 2483
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitiate()Z
    .locals 2

    .prologue
    .line 1781
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvideContract()Z
    .locals 2

    .prologue
    .line 2132
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvideRefund()Z
    .locals 2

    .prologue
    .line 1898
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturnRefund()Z
    .locals 2

    .prologue
    .line 2015
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerVersion()Z
    .locals 2

    .prologue
    .line 1664
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSettlement()Z
    .locals 2

    .prologue
    .line 2366
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1455
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdatePayment()Z
    .locals 2

    .prologue
    .line 2249
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1124
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1369
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v0

    .line 1373
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasClientVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1374
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1379
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasServerVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1380
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasInitiate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1386
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasProvideRefund()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1392
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasReturnRefund()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1398
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasProvideContract()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1404
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasUpdatePayment()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1410
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasSettlement()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1416
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public mergeClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .prologue
    .line 1577
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1578
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1580
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1585
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1589
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1590
    return-object p0

    .line 1583
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    goto :goto_0

    .line 1587
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeError(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$Error;

    .prologue
    .line 2529
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2530
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2532
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2537
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2541
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2542
    return-object p0

    .line 2535
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    goto :goto_0

    .line 2539
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1428
    const/4 v2, 0x0

    .line 1430
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    if-eqz v2, :cond_0

    .line 1436
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1439
    :cond_0
    return-object p0

    .line 1431
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-object v2, v0

    .line 1433
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1435
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1436
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1324
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    if-eqz v0, :cond_0

    .line 1325
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p0

    .line 1328
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    :goto_0
    return-object p0

    .line 1327
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .prologue
    .line 1333
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1365
    :goto_0
    return-object p0

    .line 1334
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1337
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1338
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1340
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasServerVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1341
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1343
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasInitiate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1344
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1346
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideRefund()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1347
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1349
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasReturnRefund()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1350
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1352
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideContract()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1353
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1355
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasUpdatePayment()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1356
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1358
    :cond_8
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasSettlement()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1359
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1361
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasError()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1362
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeError(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1364
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .prologue
    .line 1827
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1828
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1830
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1835
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1839
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1840
    return-object p0

    .line 1833
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    goto :goto_0

    .line 1837
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .prologue
    .line 2178
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2179
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2181
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2186
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2190
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2191
    return-object p0

    .line 2184
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    goto :goto_0

    .line 2188
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .prologue
    .line 1944
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1945
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1947
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1952
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1956
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1957
    return-object p0

    .line 1950
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    goto :goto_0

    .line 1954
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .prologue
    .line 2061
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2062
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2064
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2069
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2073
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2074
    return-object p0

    .line 2067
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    goto :goto_0

    .line 2071
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .prologue
    .line 1710
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1711
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1713
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1718
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1722
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1723
    return-object p0

    .line 1716
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    goto :goto_0

    .line 1720
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .prologue
    .line 2412
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2413
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2415
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2420
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2424
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2425
    return-object p0

    .line 2418
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    goto :goto_0

    .line 2422
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 2295
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2296
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2298
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2303
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2307
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2308
    return-object p0

    .line 2301
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0

    .line 2305
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .prologue
    .line 1560
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1561
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1562
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1566
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1567
    return-object p0

    .line 1564
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .prologue
    .line 1539
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1540
    if-nez p1, :cond_0

    .line 1541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1543
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1544
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1548
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1549
    return-object p0

    .line 1546
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setError(Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .prologue
    .line 2516
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2517
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2518
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2522
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2523
    return-object p0

    .line 2520
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setError(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$Error;

    .prologue
    .line 2499
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2500
    if-nez p1, :cond_0

    .line 2501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2503
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2504
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2508
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2509
    return-object p0

    .line 2506
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .prologue
    .line 1814
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1815
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1816
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1820
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1821
    return-object p0

    .line 1818
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .prologue
    .line 1797
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1798
    if-nez p1, :cond_0

    .line 1799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1801
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1802
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1806
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1807
    return-object p0

    .line 1804
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .prologue
    .line 2165
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2166
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2167
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2171
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2172
    return-object p0

    .line 2169
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .prologue
    .line 2148
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2149
    if-nez p1, :cond_0

    .line 2150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2152
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2153
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2157
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2158
    return-object p0

    .line 2155
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .prologue
    .line 1931
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1932
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1933
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1937
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1938
    return-object p0

    .line 1935
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .prologue
    .line 1914
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1915
    if-nez p1, :cond_0

    .line 1916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1918
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1919
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1923
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1924
    return-object p0

    .line 1921
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    .prologue
    .line 2048
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2049
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2050
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2054
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2055
    return-object p0

    .line 2052
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .prologue
    .line 2031
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2032
    if-nez p1, :cond_0

    .line 2033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2035
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2036
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2040
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2041
    return-object p0

    .line 2038
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .prologue
    .line 1697
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1698
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1699
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1703
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1704
    return-object p0

    .line 1701
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .prologue
    .line 1680
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1681
    if-nez p1, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1684
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1685
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1689
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1690
    return-object p0

    .line 1687
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .prologue
    .line 2399
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2400
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2401
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2405
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2406
    return-object p0

    .line 2403
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .prologue
    .line 2382
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2383
    if-nez p1, :cond_0

    .line 2384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2386
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2387
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2391
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2392
    return-object p0

    .line 2389
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .prologue
    .line 1479
    if-nez p1, :cond_0

    .line 1480
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1482
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1483
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1484
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1485
    return-object p0
.end method

.method public setUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .prologue
    .line 2282
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2283
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2284
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2288
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2289
    return-object p0

    .line 2286
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 2265
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2266
    if-nez p1, :cond_0

    .line 2267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2269
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2270
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2274
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2275
    return-object p0

    .line 2272
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
