.class public final enum Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final enum CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final CHANNEL_OPEN_VALUE:I = 0x7

.field public static final enum CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final CLIENT_VERSION_VALUE:I = 0x1

.field public static final enum CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final CLOSE_VALUE:I = 0x9

.field public static final enum ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final ERROR_VALUE:I = 0xa

.field public static final enum INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final INITIATE_VALUE:I = 0x3

.field public static final enum PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final PAYMENT_ACK_VALUE:I = 0xb

.field public static final enum PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final PROVIDE_CONTRACT_VALUE:I = 0x6

.field public static final enum PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final PROVIDE_REFUND_VALUE:I = 0x4

.field public static final enum RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final RETURN_REFUND_VALUE:I = 0x5

.field public static final enum SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final SERVER_VERSION_VALUE:I = 0x2

.field public static final enum UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field public static final UPDATE_PAYMENT_VALUE:I = 0x8

.field private static final VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 406
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "CLIENT_VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 410
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "SERVER_VERSION"

    invoke-direct {v0, v1, v5, v5, v6}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 414
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "INITIATE"

    invoke-direct {v0, v1, v6, v6, v7}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 418
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "PROVIDE_REFUND"

    invoke-direct {v0, v1, v7, v7, v8}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 422
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "RETURN_REFUND"

    invoke-direct {v0, v1, v8, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 426
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "PROVIDE_CONTRACT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 440
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "CHANNEL_OPEN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 444
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "UPDATE_PAYMENT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 452
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "PAYMENT_ACK"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 471
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "CLOSE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 482
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const-string v1, "ERROR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 401
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    const/4 v1, 0x0

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v2, v0, v1

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 591
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 611
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->values()[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v0

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 626
    iput p3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->index:I

    .line 627
    iput p4, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->value:I

    .line 628
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 570
    packed-switch p0, :pswitch_data_0

    .line 582
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 571
    :pswitch_0
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 572
    :pswitch_1
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 573
    :pswitch_2
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 574
    :pswitch_3
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 575
    :pswitch_4
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 576
    :pswitch_5
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 577
    :pswitch_6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 578
    :pswitch_7
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 579
    :pswitch_8
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 580
    :pswitch_9
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 581
    :pswitch_a
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object v0
.end method

.method public static values()[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0}, [Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
