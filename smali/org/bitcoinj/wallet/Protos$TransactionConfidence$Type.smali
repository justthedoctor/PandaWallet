.class public final enum Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
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
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final enum BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final BUILDING_VALUE:I = 0x1

.field public static final enum DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final DEAD_VALUE:I = 0x4

.field public static final enum NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final NOT_IN_BEST_CHAIN_VALUE:I = 0x3

.field public static final enum PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final PENDING_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field public static final UNKNOWN_VALUE:I

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4938
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 4946
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const-string v1, "BUILDING"

    invoke-direct {v0, v1, v3, v3, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 4954
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4, v4, v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 4962
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const-string v1, "NOT_IN_BEST_CHAIN"

    invoke-direct {v0, v1, v5, v5, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 4970
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v6, v6, v6}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 4933
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5029
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 5049
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

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
    .line 5063
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5064
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->index:I

    .line 5065
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->value:I

    .line 5066
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 5046
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5026
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 5014
    packed-switch p0, :pswitch_data_0

    .line 5020
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5015
    :pswitch_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    goto :goto_0

    .line 5016
    :pswitch_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    goto :goto_0

    .line 5017
    :pswitch_2
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    goto :goto_0

    .line 5018
    :pswitch_3
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    goto :goto_0

    .line 5019
    :pswitch_4
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    goto :goto_0

    .line 5014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 5053
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5054
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5057
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4933
    const-class v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object v0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    .prologue
    .line 4933
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 5042
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 5011
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 5038
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
