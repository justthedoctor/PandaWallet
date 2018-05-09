.class public final enum Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final enum KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final KEY_ROTATION_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field public static final USER_PAYMENT_VALUE:I = 0x1

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6924
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 6932
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const-string v1, "USER_PAYMENT"

    invoke-direct {v0, v1, v3, v3, v3}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 6940
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    const-string v1, "KEY_ROTATION"

    invoke-direct {v0, v1, v4, v4, v4}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 6915
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v0, v2

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    aput-object v1, v0, v4

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 6985
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 7005
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

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
    .line 7019
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7020
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->index:I

    .line 7021
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->value:I

    .line 7022
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 7002
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6982
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 6972
    packed-switch p0, :pswitch_data_0

    .line 6976
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6973
    :pswitch_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_0

    .line 6974
    :pswitch_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_0

    .line 6975
    :pswitch_2
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto :goto_0

    .line 6972
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 7009
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7010
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7013
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6915
    const-class v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object v0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1

    .prologue
    .line 6915
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 6998
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 6969
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 6994
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
