.class public final Lorg/spongycastle/crypto/params/KDFCounterParameters;
.super Ljava/lang/Object;
.source "KDFCounterParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final fixedInputData:[B

.field private final ki:[B

.field private final r:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 2
    .param p1, "ki"    # [B
    .param p2, "fixedInputData"    # [B
    .param p3, "r"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A KDF requires Ki (a seed) as input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->ki:[B

    .line 22
    if-nez p2, :cond_1

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputData:[B

    .line 31
    :goto_0
    const/16 v0, 0x8

    if-eq p3, v0, :cond_2

    const/16 v0, 0x10

    if-eq p3, v0, :cond_2

    const/16 v0, 0x18

    if-eq p3, v0, :cond_2

    const/16 v0, 0x20

    if-eq p3, v0, :cond_2

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputData:[B

    goto :goto_0

    .line 35
    :cond_2
    iput p3, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->r:I

    .line 36
    return-void
.end method


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputData:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->r:I

    return v0
.end method
