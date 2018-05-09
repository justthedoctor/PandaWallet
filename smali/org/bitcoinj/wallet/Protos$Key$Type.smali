.class public final enum Lorg/bitcoinj/wallet/Protos$Key$Type;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Key$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final enum ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final ENCRYPTED_SCRYPT_AES_VALUE:I = 0x2

.field public static final enum ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field public static final ORIGINAL_VALUE:I = 0x1

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key$Type;",
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1454
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/bitcoinj/wallet/Protos$Key$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 1462
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    const-string v1, "ENCRYPTED_SCRYPT_AES"

    invoke-direct {v0, v1, v2, v2, v4}, Lorg/bitcoinj/wallet/Protos$Key$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 1445
    new-array v0, v4, [Lorg/bitcoinj/wallet/Protos$Key$Type;

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    aput-object v1, v0, v2

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 1498
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Type$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key$Type$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1518
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->values()[Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

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
    .line 1532
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1533
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->index:I

    .line 1534
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->value:I

    .line 1535
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 1515
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$Key$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1495
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1486
    packed-switch p0, :pswitch_data_0

    .line 1489
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1487
    :pswitch_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    goto :goto_0

    .line 1488
    :pswitch_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    goto :goto_0

    .line 1486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1445
    const-class v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object v0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    .prologue
    .line 1445
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$Key$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 1511
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 1483
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 1507
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
