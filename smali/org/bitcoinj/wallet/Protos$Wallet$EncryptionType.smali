.class public final enum Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
.super Ljava/lang/Enum;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

.field public static final enum ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

.field public static final ENCRYPTED_SCRYPT_AES_VALUE:I = 0x2

.field public static final enum UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

.field public static final UNENCRYPTED_VALUE:I = 0x1

.field private static final VALUES:[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;",
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

    .line 11024
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    const-string v1, "UNENCRYPTED"

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 11032
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    const-string v1, "ENCRYPTED_SCRYPT_AES"

    invoke-direct {v0, v1, v2, v2, v4}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 11015
    new-array v0, v4, [Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 11068
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 11088
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->values()[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->VALUES:[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

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
    .line 11102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11103
    iput p3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->index:I

    .line 11104
    iput p4, p0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->value:I

    .line 11105
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 11085
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11065
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 11056
    packed-switch p0, :pswitch_data_0

    .line 11059
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11057
    :pswitch_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    goto :goto_0

    .line 11058
    :pswitch_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    goto :goto_0

    .line 11056
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 11092
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11093
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11096
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->VALUES:[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11015
    const-class v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method public static values()[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .prologue
    .line 11015
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->$VALUES:[Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-virtual {v0}, [Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 11081
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 11053
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 11077
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
