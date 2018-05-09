.class public Lorg/spongycastle/crypto/tls/UseSRTPData;
.super Ljava/lang/Object;
.source "UseSRTPData.java"


# instance fields
.field private mki:[B

.field private protectionProfiles:[I


# direct methods
.method public constructor <init>([I[B)V
    .locals 2
    .param p1, "protectionProfiles"    # [I
    .param p2, "mki"    # [B

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    array-length v0, p1

    const v1, 0x8000

    if-lt v0, v1, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'protectionProfiles\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    if-nez p2, :cond_3

    .line 28
    sget-object p2, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 35
    :cond_2
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/UseSRTPData;->protectionProfiles:[I

    .line 36
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/UseSRTPData;->mki:[B

    .line 37
    return-void

    .line 30
    :cond_3
    array-length v0, p2

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mki\' cannot be longer than 255 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMki()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/UseSRTPData;->mki:[B

    return-object v0
.end method

.method public getProtectionProfiles()[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/UseSRTPData;->protectionProfiles:[I

    return-object v0
.end method
