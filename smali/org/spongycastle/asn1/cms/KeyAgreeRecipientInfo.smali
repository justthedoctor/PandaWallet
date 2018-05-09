.class public Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "KeyAgreeRecipientInfo.java"


# instance fields
.field private keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private originator:Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

.field private recipientEncryptedKeys:Lorg/spongycastle/asn1/ASN1Sequence;

.field private ukm:Lorg/spongycastle/asn1/ASN1OctetString;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 61
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    .line 64
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 66
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/spongycastle/asn1/ASN1OctetString;

    move v0, v1

    .line 70
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "originator"    # Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;
    .param p2, "ukm"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p3, "keyEncryptionAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "recipientEncryptedKeys"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 46
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 48
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 50
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 108
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v0, :cond_0

    .line 110
    check-cast p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    .line 118
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 113
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 118
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 89
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginator()Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    return-object v0
.end method

.method public getRecipientEncryptedKeys()Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getUserKeyingMaterial()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 154
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 162
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 164
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method