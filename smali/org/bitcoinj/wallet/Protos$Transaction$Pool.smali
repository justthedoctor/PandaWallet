.class public final enum Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
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
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Transaction$Pool;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final enum DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final DEAD_VALUE:I = 0xa

.field public static final enum INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final INACTIVE_VALUE:I = 0x2

.field public static final enum PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final enum PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final PENDING_INACTIVE_VALUE:I = 0x12

.field public static final PENDING_VALUE:I = 0x10

.field public static final enum SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final SPENT_VALUE:I = 0x5

.field public static final enum UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field public static final UNSPENT_VALUE:I = 0x4

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Pool;",
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
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 6754
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v1, "UNSPENT"

    invoke-direct {v0, v1, v8, v8, v6}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 6762
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v1, "SPENT"

    invoke-direct {v0, v1, v9, v9, v7}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 6770
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v5, v5, v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 6778
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v1, "DEAD"

    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 6786
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v1, "PENDING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 6794
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    const-string v1, "PENDING_INACTIVE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 6745
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v0, v8

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v0, v9

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v2, v0, v1

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v0, v6

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    aput-object v1, v0, v7

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 6866
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6886
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

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
    .line 6900
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6901
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->index:I

    .line 6902
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->value:I

    .line 6903
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 6883
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$Transaction$Pool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6863
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 6850
    sparse-switch p0, :sswitch_data_0

    .line 6857
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6851
    :sswitch_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 6852
    :sswitch_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 6853
    :sswitch_2
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 6854
    :sswitch_3
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 6855
    :sswitch_4
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 6856
    :sswitch_5
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 6850
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_3
        0x10 -> :sswitch_4
        0x12 -> :sswitch_5
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 6890
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6891
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6894
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6745
    const-class v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object v0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .prologue
    .line 6745
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 6879
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 6847
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 6875
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
