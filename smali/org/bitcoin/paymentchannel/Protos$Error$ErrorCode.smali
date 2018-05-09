.class public final enum Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final enum BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final BAD_TRANSACTION_VALUE:I = 0x4

.field public static final enum CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final CHANNEL_VALUE_TOO_LARGE_VALUE:I = 0x6

.field public static final enum MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final MIN_PAYMENT_TOO_LARGE_VALUE:I = 0x7

.field public static final enum NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final NO_ACCEPTABLE_VERSION_VALUE:I = 0x3

.field public static final enum OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final OTHER_VALUE:I = 0x8

.field public static final enum SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final SYNTAX_ERROR_VALUE:I = 0x2

.field public static final enum TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final TIMEOUT_VALUE:I = 0x1

.field public static final enum TIME_WINDOW_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field public static final TIME_WINDOW_TOO_LARGE_VALUE:I = 0x5

.field private static final VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;",
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

    .line 7797
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7805
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "SYNTAX_ERROR"

    invoke-direct {v0, v1, v5, v5, v6}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7813
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "NO_ACCEPTABLE_VERSION"

    invoke-direct {v0, v1, v6, v6, v7}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7821
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "BAD_TRANSACTION"

    invoke-direct {v0, v1, v7, v7, v8}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7830
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "TIME_WINDOW_TOO_LARGE"

    invoke-direct {v0, v1, v8, v8, v9}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7838
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "CHANNEL_VALUE_TOO_LARGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7846
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "MIN_PAYMENT_TOO_LARGE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7850
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7788
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const/4 v1, 0x0

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 7937
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 7957
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->values()[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v0

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

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
    .line 7971
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7972
    iput p3, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->index:I

    .line 7973
    iput p4, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->value:I

    .line 7974
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 7954
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7934
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 7919
    packed-switch p0, :pswitch_data_0

    .line 7928
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 7920
    :pswitch_0
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIMEOUT:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7921
    :pswitch_1
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7922
    :pswitch_2
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7923
    :pswitch_3
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7924
    :pswitch_4
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7925
    :pswitch_5
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7926
    :pswitch_6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7927
    :pswitch_7
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    goto :goto_0

    .line 7919
    nop

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
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 7961
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7965
    :cond_0
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7788
    const-class v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1

    .prologue
    .line 7788
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->$VALUES:[Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v0}, [Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 7950
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 7916
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 7946
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
