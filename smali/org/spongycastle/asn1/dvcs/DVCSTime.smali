.class public Lorg/spongycastle/asn1/dvcs/DVCSTime;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DVCSTime.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private time:Ljava/util/Date;

.field private timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 32
    new-instance v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)V
    .locals 0
    .param p1, "genTime"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
    .locals 0
    .param p1, "timeStampToken"    # Lorg/spongycastle/asn1/cms/ContentInfo;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/DVCSTime;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;

    .line 60
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 51
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)V

    move-object p0, v0

    goto :goto_0

    .line 55
    :cond_1
    if-eqz p0, :cond_2

    .line 57
    new-instance v0, Lorg/spongycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V

    move-object p0, v0

    goto :goto_0

    .line 60
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/DVCSTime;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/DVCSTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/DVCSTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGenTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
