.class public final Lde/schildbach/wallet/PaymentIntent;
.super Ljava/lang/Object;
.source "PaymentIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/PaymentIntent$Output;,
        Lde/schildbach/wallet/PaymentIntent$Standard;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/schildbach/wallet/PaymentIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final memo:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final outputs:[Lde/schildbach/wallet/PaymentIntent$Output;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final payeeData:[B
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final payeeName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final payeeOrganization:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final payeeVerifiedBy:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final paymentRequestUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final paymentUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final standard:Lde/schildbach/wallet/PaymentIntent$Standard;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lde/schildbach/wallet/PaymentIntent$1;

    invoke-direct {v0}, Lde/schildbach/wallet/PaymentIntent$1;-><init>()V

    sput-object v0, Lde/schildbach/wallet/PaymentIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lde/schildbach/wallet/PaymentIntent$Standard;

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeName:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .local v0, "outputsLength":I
    if-lez v0, :cond_0

    .line 477
    new-array v2, v0, [Lde/schildbach/wallet/PaymentIntent$Output;

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    .line 478
    iget-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    sget-object v3, Lde/schildbach/wallet/PaymentIntent$Output;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 485
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->memo:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .local v1, "payeeDataLength":I
    if-lez v1, :cond_1

    .line 492
    new-array v2, v1, [B

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    .line 493
    iget-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 500
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    .line 501
    return-void

    .line 482
    .end local v1    # "payeeDataLength":I
    :cond_0
    iput-object v4, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    goto :goto_0

    .line 497
    .restart local v1    # "payeeDataLength":I
    :cond_1
    iput-object v4, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/schildbach/wallet/PaymentIntent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lde/schildbach/wallet/PaymentIntent$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lde/schildbach/wallet/PaymentIntent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/bitcoin/core/Address;Ljava/lang/String;)V
    .locals 10
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "addressLabel"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 177
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lde/schildbach/wallet/PaymentIntent;->buildSimplePayTo(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)[Lde/schildbach/wallet/PaymentIntent$Output;

    move-result-object v5

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p2

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    invoke-direct/range {v0 .. v9}, Lde/schildbach/wallet/PaymentIntent;-><init>(Lde/schildbach/wallet/PaymentIntent$Standard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lde/schildbach/wallet/PaymentIntent$Output;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Lde/schildbach/wallet/PaymentIntent$Standard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lde/schildbach/wallet/PaymentIntent$Output;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .param p1, "standard"    # Lde/schildbach/wallet/PaymentIntent$Standard;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "payeeName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "payeeOrganization"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "payeeVerifiedBy"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "outputs"    # [Lde/schildbach/wallet/PaymentIntent$Output;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "memo"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "paymentUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "payeeData"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "paymentRequestUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    .line 165
    iput-object p2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeName:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    .line 168
    iput-object p5, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    .line 169
    iput-object p6, p0, Lde/schildbach/wallet/PaymentIntent;->memo:Ljava/lang/String;

    .line 170
    iput-object p7, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    .line 171
    iput-object p8, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    .line 172
    iput-object p9, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public static blank()Lde/schildbach/wallet/PaymentIntent;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 182
    new-instance v0, Lde/schildbach/wallet/PaymentIntent;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    invoke-direct/range {v0 .. v9}, Lde/schildbach/wallet/PaymentIntent;-><init>(Lde/schildbach/wallet/PaymentIntent$Standard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lde/schildbach/wallet/PaymentIntent$Output;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v0
.end method

.method private static buildSimplePayTo(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)[Lde/schildbach/wallet/PaymentIntent$Output;
    .locals 4
    .param p0, "amount"    # Ljava/math/BigInteger;
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;

    .prologue
    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Lde/schildbach/wallet/PaymentIntent$Output;

    const/4 v1, 0x0

    new-instance v2, Lde/schildbach/wallet/PaymentIntent$Output;

    invoke-static {p1}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lde/schildbach/wallet/PaymentIntent$Output;-><init>(Ljava/math/BigInteger;Lcom/google/bitcoin/script/Script;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static fromAddress(Lcom/google/bitcoin/core/Address;Ljava/lang/String;)Lde/schildbach/wallet/PaymentIntent;
    .locals 1
    .param p0, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "addressLabel"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 187
    new-instance v0, Lde/schildbach/wallet/PaymentIntent;

    invoke-direct {v0, p0, p1}, Lde/schildbach/wallet/PaymentIntent;-><init>(Lcom/google/bitcoin/core/Address;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromAddress(Ljava/lang/String;Ljava/lang/String;)Lde/schildbach/wallet/PaymentIntent;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "addressLabel"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/WrongNetworkException;,
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lde/schildbach/wallet/PaymentIntent;

    new-instance v1, Lcom/google/bitcoin/core/Address;

    sget-object v2, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v1, v2, p0}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lde/schildbach/wallet/PaymentIntent;-><init>(Lcom/google/bitcoin/core/Address;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromBitcoinUri(Lcom/google/bitcoin/uri/BitcoinURI;)Lde/schildbach/wallet/PaymentIntent;
    .locals 11
    .param p0, "bitcoinUri"    # Lcom/google/bitcoin/uri/BitcoinURI;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/google/bitcoin/uri/BitcoinURI;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/uri/BitcoinURI;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/PaymentIntent;->buildSimplePayTo(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)[Lde/schildbach/wallet/PaymentIntent$Output;

    move-result-object v5

    .line 199
    .local v5, "outputs":[Lde/schildbach/wallet/PaymentIntent$Output;
    const-string v0, "bt"

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/uri/BitcoinURI;->getParameterByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 201
    .local v10, "bluetoothMac":Ljava/lang/String;
    new-instance v0, Lde/schildbach/wallet/PaymentIntent;

    sget-object v1, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP21:Lde/schildbach/wallet/PaymentIntent$Standard;

    invoke-virtual {p0}, Lcom/google/bitcoin/uri/BitcoinURI;->getLabel()Ljava/lang/String;

    move-result-object v6

    if-eqz v10, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {p0}, Lcom/google/bitcoin/uri/BitcoinURI;->getPaymentRequestUrl()Ljava/lang/String;

    move-result-object v9

    move-object v3, v2

    move-object v4, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v9}, Lde/schildbach/wallet/PaymentIntent;-><init>(Lde/schildbach/wallet/PaymentIntent$Standard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lde/schildbach/wallet/PaymentIntent$Output;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v0

    :cond_0
    move-object v7, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Lcom/google/bitcoin/core/Address;
    .locals 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasAddress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 268
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v1, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    .line 269
    .local v0, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->isSentToP2SH()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    :cond_1
    sget-object v1, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/Script;->getToAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    .line 271
    :cond_2
    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    new-instance v1, Lcom/google/bitcoin/core/Address;

    sget-object v2, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    goto :goto_0

    .line 274
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public getAmount()Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 294
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 296
    .local v0, "amount":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasOutputs()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    .local v1, "arr$":[Lde/schildbach/wallet/PaymentIntent$Output;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 298
    .local v4, "output":Lde/schildbach/wallet/PaymentIntent$Output;
    invoke-virtual {v4}, Lde/schildbach/wallet/PaymentIntent$Output;->hasAmount()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    iget-object v5, v4, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 297
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "arr$":[Lde/schildbach/wallet/PaymentIntent$Output;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "output":Lde/schildbach/wallet/PaymentIntent$Output;
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    .end local v0    # "amount":Ljava/math/BigInteger;
    :goto_1
    return-object v0

    .restart local v0    # "amount":Ljava/math/BigInteger;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasAddress()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    iget-object v3, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    array-length v3, v3

    if-eq v3, v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    iget-object v3, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    aget-object v3, v3, v1

    iget-object v0, v3, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    .line 260
    .local v0, "script":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->isSentToP2SH()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hasAmount()Z
    .locals 5

    .prologue
    .line 284
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasOutputs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    .local v0, "arr$":[Lde/schildbach/wallet/PaymentIntent$Output;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 286
    .local v3, "output":Lde/schildbach/wallet/PaymentIntent$Output;
    invoke-virtual {v3}, Lde/schildbach/wallet/PaymentIntent$Output;->hasAmount()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const/4 v4, 0x1

    .line 289
    .end local v0    # "arr$":[Lde/schildbach/wallet/PaymentIntent$Output;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "output":Lde/schildbach/wallet/PaymentIntent$Output;
    :goto_1
    return v4

    .line 285
    .restart local v0    # "arr$":[Lde/schildbach/wallet/PaymentIntent$Output;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "output":Lde/schildbach/wallet/PaymentIntent$Output;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "arr$":[Lde/schildbach/wallet/PaymentIntent$Output;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "output":Lde/schildbach/wallet/PaymentIntent$Output;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasOutputs()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPayee()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->payeeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPaymentRequestUrl()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPaymentUrl()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothPaymentRequestUrl()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    invoke-static {v0}, Lde/schildbach/wallet/util/Bluetooth;->isBluetoothUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothPaymentUrl()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    invoke-static {v0}, Lde/schildbach/wallet/util/Bluetooth;->isBluetoothUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHttpPaymentRequestUrl()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    const-string v1, "http:"

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    const-string v1, "https:"

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHttpPaymentUrl()Z
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    const-string v1, "http:"

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    const-string v1, "https:"

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecurityExtendedBy(Lde/schildbach/wallet/PaymentIntent;)Z
    .locals 5
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasAddress()Z

    move-result v0

    .line 358
    .local v0, "hasAddress":Z
    invoke-virtual {p1}, Lde/schildbach/wallet/PaymentIntent;->hasAddress()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v2

    .line 360
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v3

    invoke-virtual {p1}, Lde/schildbach/wallet/PaymentIntent;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/core/Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    :cond_2
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasAmount()Z

    move-result v1

    .line 365
    .local v1, "hasAmount":Z
    invoke-virtual {p1}, Lde/schildbach/wallet/PaymentIntent;->hasAmount()Z

    move-result v3

    if-ne v1, v3, :cond_0

    .line 367
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->getAmount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lde/schildbach/wallet/PaymentIntent;->getAmount()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSupportedPaymentRequestUrl()Z
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->isHttpPaymentRequestUrl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentRequestUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedPaymentUrl()Z
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->isHttpPaymentUrl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayEditAddress()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayEditAmount()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    sget-object v1, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP70:Lde/schildbach/wallet/PaymentIntent$Standard;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasAmount()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeWithEditedValues(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lde/schildbach/wallet/PaymentIntent;
    .locals 10
    .param p1, "editedAmount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "editedAddress"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasOutputs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->mayEditAmount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    new-array v5, v0, [Lde/schildbach/wallet/PaymentIntent$Output;

    new-instance v0, Lde/schildbach/wallet/PaymentIntent$Output;

    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    aget-object v1, v1, v2

    iget-object v1, v1, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-direct {v0, p1, v1}, Lde/schildbach/wallet/PaymentIntent$Output;-><init>(Ljava/math/BigInteger;Lcom/google/bitcoin/script/Script;)V

    aput-object v0, v5, v2

    .line 228
    .local v5, "outputs":[Lde/schildbach/wallet/PaymentIntent$Output;
    :goto_0
    new-instance v0, Lde/schildbach/wallet/PaymentIntent;

    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    iget-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeName:Ljava/lang/String;

    iget-object v3, p0, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    iget-object v4, p0, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    iget-object v6, p0, Lde/schildbach/wallet/PaymentIntent;->memo:Ljava/lang/String;

    iget-object v8, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    move-object v9, v7

    invoke-direct/range {v0 .. v9}, Lde/schildbach/wallet/PaymentIntent;-><init>(Lde/schildbach/wallet/PaymentIntent$Standard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lde/schildbach/wallet/PaymentIntent$Output;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v0

    .line 219
    .end local v5    # "outputs":[Lde/schildbach/wallet/PaymentIntent$Output;
    :cond_0
    iget-object v5, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    .restart local v5    # "outputs":[Lde/schildbach/wallet/PaymentIntent$Output;
    goto :goto_0

    .line 225
    .end local v5    # "outputs":[Lde/schildbach/wallet/PaymentIntent$Output;
    :cond_1
    invoke-static {p1, p2}, Lde/schildbach/wallet/PaymentIntent;->buildSimplePayTo(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)[Lde/schildbach/wallet/PaymentIntent$Output;

    move-result-object v5

    .restart local v5    # "outputs":[Lde/schildbach/wallet/PaymentIntent$Output;
    goto :goto_0
.end method

.method public toSendRequest()Lcom/google/bitcoin/core/Wallet$SendRequest;
    .locals 7

    .prologue
    .line 233
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    sget-object v5, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v4, v5}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 234
    .local v4, "transaction":Lcom/google/bitcoin/core/Transaction;
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    .local v0, "arr$":[Lde/schildbach/wallet/PaymentIntent$Output;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 235
    .local v3, "output":Lde/schildbach/wallet/PaymentIntent$Output;
    iget-object v5, v3, Lde/schildbach/wallet/PaymentIntent$Output;->amount:Ljava/math/BigInteger;

    iget-object v6, v3, Lde/schildbach/wallet/PaymentIntent$Output;->script:Lcom/google/bitcoin/script/Script;

    invoke-virtual {v4, v5, v6}, Lcom/google/bitcoin/core/Transaction;->addOutput(Ljava/math/BigInteger;Lcom/google/bitcoin/script/Script;)Lcom/google/bitcoin/core/TransactionOutput;

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "output":Lde/schildbach/wallet/PaymentIntent$Output;
    :cond_0
    invoke-static {v4}, Lcom/google/bitcoin/core/Wallet$SendRequest;->forTx(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v5

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasPayee()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->payeeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 388
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    invoke-virtual {p0}, Lde/schildbach/wallet/PaymentIntent;->hasOutputs()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    if-eqz v1, :cond_3

    .line 396
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_3
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 401
    const-string v1, ",paymentRequestUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v1, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 391
    :cond_5
    const-string v1, "null"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 418
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->standard:Lde/schildbach/wallet/PaymentIntent$Standard;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 420
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->payeeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->outputs:[Lde/schildbach/wallet/PaymentIntent$Output;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 434
    :goto_0
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->memo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->payeeData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 448
    :goto_1
    iget-object v0, p0, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    return-void

    .line 431
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
