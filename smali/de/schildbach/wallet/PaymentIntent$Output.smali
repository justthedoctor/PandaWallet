.class public final Lde/schildbach/wallet/PaymentIntent$Output;
.super Ljava/lang/Object;
.source "PaymentIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/schildbach/wallet/PaymentIntent$Output;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final amount:Ljava/math/BigInteger;

.field public final script:Lcom/google/bitcoin/script/Script;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lde/schildbach/wallet/PaymentIntent$Output$1;

    invoke-direct {v0}, Lde/schildbach/wallet/PaymentIntent$Output$1;-><init>()V

    sput-object v0, Lde/schildbach/wallet/PaymentIntent$Output;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "programLength":I
    new-array v0, v1, [B

    .line 128
    .local v0, "program":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 129
    new-instance v2, Lcom/google/bitcoin/script/Script;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/schildbach/wallet/PaymentIntent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lde/schildbach/wallet/PaymentIntent$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lde/schildbach/wallet/PaymentIntent$Output;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lcom/google/bitcoin/script/Script;)V
    .locals 0
    .param p1, "amount"    # Ljava/math/BigInteger;
    .param p2, "script"    # Lcom/google/bitcoin/script/Script;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    .line 60
    iput-object p2, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public hasAmount()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v5, 0x5b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent$Output;->hasAmount()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    invoke-static {v5}, Lde/schildbach/wallet/util/GenericUtils;->formatDebugValue(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToP2SH()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    :cond_0
    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    sget-object v6, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/script/Script;->getToAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    :cond_1
    :goto_1
    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 75
    :cond_2
    const-string v5, "null"

    goto :goto_0

    .line 79
    :cond_3
    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->getPubKey()[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 81
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 82
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->isSentToMultiSig()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    const-string v5, "multisig"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    :cond_5
    const-string v5, "unknown"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 102
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v1}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v0

    .line 103
    .local v0, "program":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 105
    return-void
.end method
