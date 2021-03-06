.class public Lorg/spongycastle/asn1/eac/CVCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CVCertificate.java"


# static fields
.field public static ReferenceEncoding:Ljava/lang/String;

.field private static bodyValid:I

.field private static signValid:I

.field public static final version_1:B


# instance fields
.field private certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    .line 33
    const/4 v0, 0x2

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    .line 36
    const-string v0, "ISO-8859-1"

    sput-object v0, Lorg/spongycastle/asn1/eac/CVCertificate;->ReferenceEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 0
    .param p1, "aIS"    # Lorg/spongycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 94
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CVCertificate;->initFrom(Lorg/spongycastle/asn1/ASN1InputStream;)V

    .line 95
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 0
    .param p1, "appSpe"    # Lorg/spongycastle/asn1/DERApplicationSpecific;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 124
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/eac/CertificateBody;[B)V
    .locals 2
    .param p1, "body"    # Lorg/spongycastle/asn1/eac/CertificateBody;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    .line 139
    iput-object p2, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    .line 141
    iget v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    .line 142
    iget v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    .line 143
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CVCertificate;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 154
    instance-of v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;

    if-eqz v1, :cond_0

    .line 156
    check-cast p0, Lorg/spongycastle/asn1/eac/CVCertificate;

    .line 170
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 158
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 162
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/eac/CVCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERApplicationSpecific;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/eac/CVCertificate;-><init>(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private initFrom(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 3
    .param p1, "aIS"    # Lorg/spongycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_1

    .line 103
    instance-of v1, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    .line 109
    .restart local v0    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_1
    return-void
.end method

.method private setPrivateData(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 6
    .param p1, "appSpe"    # Lorg/spongycastle/asn1/DERApplicationSpecific;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v3, 0x0

    iput v3, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_1

    .line 50
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 52
    .local v1, "content":Lorg/spongycastle/asn1/ASN1InputStream;
    :goto_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .local v2, "tmpObj":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v2, :cond_2

    .line 55
    instance-of v3, v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 57
    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 58
    .local v0, "aSpe":Lorg/spongycastle/asn1/DERApplicationSpecific;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 69
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :sswitch_0
    invoke-static {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CertificateBody;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    .line 62
    iget v3, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v4, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    .line 65
    :sswitch_1
    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    .line 66
    iget v3, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v4, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    .line 74
    .end local v0    # "aSpe":Lorg/spongycastle/asn1/DERApplicationSpecific;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    .end local v1    # "content":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v2    # "tmpObj":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not a CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    .restart local v1    # "content":Lorg/spongycastle/asn1/ASN1InputStream;
    .restart local v2    # "tmpObj":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_2
    return-void

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getAuthorityReference()Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificationAuthorityReference()Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/spongycastle/asn1/eac/CertificateBody;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateType()I

    move-result v0

    return v0
.end method

.method public getEffectiveDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateEffectiveDate()Lorg/spongycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateExpirationDate()Lorg/spongycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorization()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    .line 226
    .local v0, "cha":Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getOid()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public getHolderAuthorizationRights()Lorg/spongycastle/asn1/eac/Flags;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lorg/spongycastle/asn1/eac/Flags;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/eac/Flags;-><init>(I)V

    return-object v0
.end method

.method public getHolderAuthorizationRole()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    .line 304
    .local v0, "rights":I
    and-int/lit16 v1, v0, 0xc0

    return v1
.end method

.method public getHolderReference()Lorg/spongycastle/asn1/eac/CertificateHolderReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderReference()Lorg/spongycastle/asn1/eac/CertificateHolderReference;

    move-result-object v0

    return-object v0
.end method

.method public getRole()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    .line 272
    .local v0, "cha":Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v1

    return v1
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .prologue
    .line 199
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 201
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget v2, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v3, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    sget v4, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v3, v4

    if-eq v2, v3, :cond_0

    .line 203
    const/4 v2, 0x0

    .line 216
    :goto_0
    return-object v2

    .line 205
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 209
    :try_start_0
    new-instance v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/4 v3, 0x0

    const/16 v4, 0x37

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v6, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    new-instance v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v3, 0x21

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unable to convert signature!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
