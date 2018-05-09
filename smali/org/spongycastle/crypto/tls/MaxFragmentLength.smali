.class public Lorg/spongycastle/crypto/tls/MaxFragmentLength;
.super Ljava/lang/Object;
.source "MaxFragmentLength.java"


# static fields
.field public static pow2_10:S

.field public static pow2_11:S

.field public static pow2_12:S

.field public static pow2_9:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput-short v0, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->pow2_9:S

    .line 9
    const/4 v0, 0x2

    sput-short v0, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->pow2_10:S

    .line 10
    const/4 v0, 0x3

    sput-short v0, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->pow2_11:S

    .line 11
    const/4 v0, 0x4

    sput-short v0, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->pow2_12:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(S)Z
    .locals 1
    .param p0, "maxFragmentLength"    # S

    .prologue
    .line 15
    sget-short v0, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->pow2_9:S

    if-lt p0, v0, :cond_0

    sget-short v0, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->pow2_12:S

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
