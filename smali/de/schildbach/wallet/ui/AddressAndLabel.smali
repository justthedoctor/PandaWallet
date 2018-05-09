.class public Lde/schildbach/wallet/ui/AddressAndLabel;
.super Ljava/lang/Object;
.source "AddressAndLabel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/schildbach/wallet/ui/AddressAndLabel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final address:Lcom/google/bitcoin/core/Address;

.field public final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lde/schildbach/wallet/ui/AddressAndLabel$1;

    invoke-direct {v0}, Lde/schildbach/wallet/ui/AddressAndLabel$1;-><init>()V

    sput-object v0, Lde/schildbach/wallet/ui/AddressAndLabel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/NetworkParameters;

    .line 79
    .local v1, "addressParameters":Lcom/google/bitcoin/core/NetworkParameters;
    const/16 v2, 0x14

    new-array v0, v2, [B

    .line 80
    .local v0, "addressHash":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 81
    new-instance v2, Lcom/google/bitcoin/core/Address;

    invoke-direct {v2, v1, v0}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    iput-object v2, p0, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/ui/AddressAndLabel;->label:Ljava/lang/String;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/schildbach/wallet/ui/AddressAndLabel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/AddressAndLabel$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/AddressAndLabel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "addressParams"    # Lcom/google/bitcoin/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "label"    # Ljava/lang/String;
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/bitcoin/core/Address;

    invoke-direct {v0, p1, p2}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    .line 43
    iput-object p3, p0, Lde/schildbach/wallet/ui/AddressAndLabel;->label:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Address;->getParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 56
    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Address;->getHash160()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 58
    iget-object v0, p0, Lde/schildbach/wallet/ui/AddressAndLabel;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
