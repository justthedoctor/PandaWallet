.class public Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
.super Ljava/lang/Object;
.source "DHKDFParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private extraInfo:[B

.field private keySize:I

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;I[B)V
    .locals 1
    .param p1, "algorithm"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "keySize"    # I
    .param p3, "z"    # [B

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;I[B[B)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;I[B[B)V
    .locals 2
    .param p1, "algorithm"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "keySize"    # I
    .param p3, "z"    # [B
    .param p4, "extraInfo"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    iput p2, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    .line 31
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    .line 32
    iput-object p4, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getExtraInfo()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    return-object v0
.end method
