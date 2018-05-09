.class public Lorg/spongycastle/asn1/ess/ContentHints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ContentHints.java"


# instance fields
.field private contentDescription:Lorg/spongycastle/asn1/DERUTF8String;

.field private contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "contentType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentDescription:Lorg/spongycastle/asn1/DERUTF8String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/DERUTF8String;)V
    .locals 0
    .param p1, "contentType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "contentDescription"    # Lorg/spongycastle/asn1/DERUTF8String;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    iput-object p2, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentDescription:Lorg/spongycastle/asn1/DERUTF8String;

    .line 82
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 39
    .local v0, "field":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 41
    invoke-static {v0}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentDescription:Lorg/spongycastle/asn1/DERUTF8String;

    .line 42
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;)V
    .locals 2
    .param p1, "contentType"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 56
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ess/ContentHints;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERUTF8String;)V
    .locals 2
    .param p1, "contentType"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "contentDescription"    # Lorg/spongycastle/asn1/DERUTF8String;

    .prologue
    .line 66
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/asn1/ess/ContentHints;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/DERUTF8String;)V

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/ContentHints;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    instance-of v0, p0, Lorg/spongycastle/asn1/ess/ContentHints;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lorg/spongycastle/asn1/ess/ContentHints;

    .line 30
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 25
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/ess/ContentHints;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ess/ContentHints;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentDescription()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentDescription:Lorg/spongycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentDescription:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentDescription:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/ContentHints;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
