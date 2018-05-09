.class public Lcom/google/bitcoin/core/WrongNetworkException;
.super Lcom/google/bitcoin/core/AddressFormatException;
.source "WrongNetworkException.java"


# instance fields
.field public acceptableVersions:[I

.field public verCode:I


# direct methods
.method public constructor <init>(I[I)V
    .locals 2
    .param p1, "verCode"    # I
    .param p2, "acceptableVersions"    # [I

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version code of address did not match acceptable versions for network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/bitcoin/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lcom/google/bitcoin/core/WrongNetworkException;->verCode:I

    .line 36
    iput-object p2, p0, Lcom/google/bitcoin/core/WrongNetworkException;->acceptableVersions:[I

    .line 37
    return-void
.end method
