.class Lde/schildbach/wallet/util/LinuxSecureRandom$LinuxSecureRandomProvider;
.super Ljava/security/Provider;
.source "LinuxSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/util/LinuxSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxSecureRandomProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "LinuxSecureRandom"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "A Linux specific random number provider that uses /dev/urandom"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 43
    const-string v0, "SecureRandom.LinuxSecureRandom"

    const-class v1, Lde/schildbach/wallet/util/LinuxSecureRandom;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/schildbach/wallet/util/LinuxSecureRandom$LinuxSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
