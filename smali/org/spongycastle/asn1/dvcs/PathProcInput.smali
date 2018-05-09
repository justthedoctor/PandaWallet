.class public Lorg/spongycastle/asn1/dvcs/PathProcInput;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PathProcInput.java"


# instance fields
.field private acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

.field private explicitPolicyReqd:Z

.field private inhibitAnyPolicy:Z

.field private inhibitPolicyMapping:Z


# direct methods
.method public constructor <init>([Lorg/spongycastle/asn1/x509/PolicyInformation;)V
    .locals 1
    .param p1, "acceptablePolicySet"    # [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 30
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 31
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 35
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 36
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/PolicyInformation;ZZZ)V
    .locals 1
    .param p1, "acceptablePolicySet"    # [Lorg/spongycastle/asn1/x509/PolicyInformation;
    .param p2, "inhibitPolicyMapping"    # Z
    .param p3, "explicitPolicyReqd"    # Z
    .param p4, "inhibitAnyPolicy"    # Z

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 30
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 31
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 40
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 41
    iput-boolean p2, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 42
    iput-boolean p3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 43
    iput-boolean p4, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 44
    return-void
.end method

.method private static fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 3
    .param p0, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 50
    .local v1, "tmp":[Lorg/spongycastle/asn1/x509/PolicyInformation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 60
    instance-of v7, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v7, :cond_0

    .line 62
    check-cast p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    .line 98
    .end local p0    # "obj":Ljava/lang/Object;
    .local v0, "i":I
    .local v2, "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    .local v3, "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .local v4, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :goto_0
    return-object p0

    .line 64
    .end local v0    # "i":I
    .end local v2    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v3    # "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .end local v4    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_4

    .line 66
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 67
    .restart local v4    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v4, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 68
    .restart local v2    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v3, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    invoke-static {v2}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;-><init>([Lorg/spongycastle/asn1/x509/PolicyInformation;)V

    .line 70
    .restart local v3    # "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 72
    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 74
    .local v1, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v7, v1, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v7, :cond_2

    .line 76
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v6

    .line 77
    .local v6, "x":Lorg/spongycastle/asn1/ASN1Boolean;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setInhibitPolicyMapping(Z)V

    .line 70
    .end local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    instance-of v7, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_1

    .line 81
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 83
    .local v5, "t":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 86
    :pswitch_0
    invoke-static {v5, v8}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v6

    .line 87
    .restart local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setExplicitPolicyReqd(Z)V

    goto :goto_2

    .line 90
    .end local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    :pswitch_1
    invoke-static {v5, v8}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v6

    .line 91
    .restart local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setInhibitAnyPolicy(Z)V

    goto :goto_2

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v5    # "t":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    :cond_3
    move-object p0, v3

    .line 95
    goto :goto_0

    .line 98
    .end local v0    # "i":I
    .end local v2    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v3    # "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .end local v4    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_4
    const/4 p0, 0x0

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 105
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/PathProcInput;

    move-result-object v0

    return-object v0
.end method

.method private setExplicitPolicyReqd(Z)V
    .locals 0
    .param p1, "explicitPolicyReqd"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 169
    return-void
.end method

.method private setInhibitAnyPolicy(Z)V
    .locals 0
    .param p1, "inhibitAnyPolicy"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 179
    return-void
.end method

.method private setInhibitPolicyMapping(Z)V
    .locals 0
    .param p1, "inhibitPolicyMapping"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 159
    return-void
.end method


# virtual methods
.method public getAcceptablePolicySet()[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    return-object v0
.end method

.method public isExplicitPolicyReqd()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    return v0
.end method

.method public isInhibitAnyPolicy()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return v0
.end method

.method public isInhibitPolicyMapping()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 110
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 111
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v1, "pV":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v3, v3

    if-eq v0, v3, :cond_0

    .line 115
    iget-object v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    if-eqz v3, :cond_1

    .line 122
    new-instance v3, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-boolean v4, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    :cond_1
    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    if-eqz v3, :cond_2

    .line 126
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-boolean v5, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    invoke-direct {v3, v7, v7, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    :cond_2
    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    if-eqz v3, :cond_3

    .line 130
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-boolean v6, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    invoke-direct {v3, v7, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 133
    :cond_3
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathProcInput: {\nacceptablePolicySet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "explicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
