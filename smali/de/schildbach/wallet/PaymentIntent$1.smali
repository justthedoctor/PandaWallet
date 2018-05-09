.class final Lde/schildbach/wallet/PaymentIntent$1;
.super Ljava/lang/Object;
.source "PaymentIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lde/schildbach/wallet/PaymentIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/schildbach/wallet/PaymentIntent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 456
    new-instance v0, Lde/schildbach/wallet/PaymentIntent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/schildbach/wallet/PaymentIntent;-><init>(Landroid/os/Parcel;Lde/schildbach/wallet/PaymentIntent$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/PaymentIntent$1;->createFromParcel(Landroid/os/Parcel;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lde/schildbach/wallet/PaymentIntent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 462
    new-array v0, p1, [Lde/schildbach/wallet/PaymentIntent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/PaymentIntent$1;->newArray(I)[Lde/schildbach/wallet/PaymentIntent;

    move-result-object v0

    return-object v0
.end method
