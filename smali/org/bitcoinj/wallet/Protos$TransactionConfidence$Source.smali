.class public final enum Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final enum SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final SOURCE_NETWORK_VALUE:I = 0x1

.field public static final enum SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final SOURCE_SELF_VALUE:I = 0x2

.field public static final enum SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field public static final SOURCE_UNKNOWN_VALUE:I

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;",
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

    .line 5087
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    const-string v1, "SOURCE_UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5095
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    const-string v1, "SOURCE_NETWORK"

    invoke-direct {v0, v1, v3, v3, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5103
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    const-string v1, "SOURCE_SELF"

    invoke-direct {v0, v1, v4, v4, v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5078
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    aput-object v1, v0, v2

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    aput-object v1, v0, v4

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5148
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 5168
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

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
    .line 5182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5183
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->index:I

    .line 5184
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->value:I

    .line 5185
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 5165
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5145
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 5135
    packed-switch p0, :pswitch_data_0

    .line 5139
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5136
    :pswitch_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    goto :goto_0

    .line 5137
    :pswitch_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    goto :goto_0

    .line 5138
    :pswitch_2
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    goto :goto_0

    .line 5135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 5172
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5176
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5078
    const-class v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object v0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    .prologue
    .line 5078
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 5161
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 5132
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 5157
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
