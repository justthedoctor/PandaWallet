.class public Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
.super Ljava/lang/Object;
.source "PKIHeaderBuilder.java"


# instance fields
.field private freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

.field private generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

.field private messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private pvno:Lorg/spongycastle/asn1/ASN1Integer;

.field private recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

.field private recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

.field private recipient:Lorg/spongycastle/asn1/x509/GeneralName;

.field private sender:Lorg/spongycastle/asn1/x509/GeneralName;

.field private senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

.field private senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

.field private transactionID:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 3
    .param p1, "pvno"    # I
    .param p2, "sender"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p3, "recipient"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 36
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;-><init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "pvno"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "sender"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p3, "recipient"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->pvno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 45
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 46
    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipient:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 47
    return-void
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 249
    if-eqz p3, :cond_0

    .line 251
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 253
    :cond_0
    return-void
.end method

.method private static makeGeneralInfoSeq(Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1
    .param p0, "generalInfo"    # Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .prologue
    .line 160
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method private static makeGeneralInfoSeq([Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 4
    .param p0, "generalInfos"    # [Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "genInfoSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz p0, :cond_1

    .line 169
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 170
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 172
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    .end local v0    # "genInfoSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    .line 176
    .end local v1    # "i":I
    .end local v2    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "genInfoSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/asn1/cmp/PKIHeader;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 221
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->pvno:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 222
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 223
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipient:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 224
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 225
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 227
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 228
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 229
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 230
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 231
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 232
    const/16 v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 234
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 235
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 236
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 237
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 238
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 239
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 240
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 241
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 242
    iput-object v3, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 244
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PKIHeader;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    return-object v1
.end method

.method public setFreeText(Lorg/spongycastle/asn1/cmp/PKIFreeText;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "text"    # Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 137
    return-object p0
.end method

.method public setGeneralInfo(Lorg/spongycastle/asn1/ASN1Sequence;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "seqOfInfoTypeAndValue"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 154
    return-object p0
.end method

.method public setGeneralInfo(Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "genInfo"    # Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .prologue
    .line 142
    invoke-static {p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->makeGeneralInfoSeq(Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo(Lorg/spongycastle/asn1/ASN1Sequence;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setGeneralInfo([Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "genInfos"    # [Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .prologue
    .line 147
    invoke-static {p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->makeGeneralInfoSeq([Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo(Lorg/spongycastle/asn1/ASN1Sequence;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMessageTime(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "time"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 63
    return-object p0
.end method

.method public setMessageTime(Lorg/spongycastle/asn1/DERGeneralizedTime;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "time"    # Lorg/spongycastle/asn1/DERGeneralizedTime;

    .prologue
    .line 54
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 56
    return-object p0
.end method

.method public setProtectionAlg(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "aid"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 70
    return-object p0
.end method

.method public setRecipKID(Lorg/spongycastle/asn1/DEROctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "kid"    # Lorg/spongycastle/asn1/DEROctetString;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 94
    return-object p0
.end method

.method public setRecipKID([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "kid"    # [B

    .prologue
    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setRecipKID(Lorg/spongycastle/asn1/DEROctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0
.end method

.method public setRecipNonce(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "nonce"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 130
    return-object p0
.end method

.method public setRecipNonce([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "nonce"    # [B

    .prologue
    .line 123
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setRecipNonce(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0
.end method

.method public setSenderKID(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "kid"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 82
    return-object p0
.end method

.method public setSenderKID([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "kid"    # [B

    .prologue
    .line 75
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setSenderKID(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0
.end method

.method public setSenderNonce(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "nonce"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 118
    return-object p0
.end method

.method public setSenderNonce([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "nonce"    # [B

    .prologue
    .line 111
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setSenderNonce(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0
.end method

.method public setTransactionID(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 0
    .param p1, "tid"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->transactionID:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 106
    return-object p0
.end method

.method public setTransactionID([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;
    .locals 1
    .param p1, "tid"    # [B

    .prologue
    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setTransactionID(Lorg/spongycastle/asn1/ASN1OctetString;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0
.end method
