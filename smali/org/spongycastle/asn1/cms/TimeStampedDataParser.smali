.class public Lorg/spongycastle/asn1/cms/TimeStampedDataParser;
.super Ljava/lang/Object;
.source "TimeStampedDataParser.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

.field private dataUri:Lorg/spongycastle/asn1/DERIA5String;

.field private metaData:Lorg/spongycastle/asn1/cms/MetaData;

.field private parser:Lorg/spongycastle/asn1/ASN1SequenceParser;

.field private temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/spongycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 44
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 46
    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 48
    invoke-static {v0}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    .line 49
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 51
    :cond_0
    instance-of v1, v0, Lorg/spongycastle/asn1/cms/MetaData;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    if-eqz v1, :cond_2

    .line 53
    :cond_1
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cms/MetaData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/MetaData;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    .line 54
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 56
    :cond_2
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-eqz v1, :cond_3

    .line 58
    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    iput-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

    .line 60
    :cond_3
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/TimeStampedDataParser;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->parser()Lorg/spongycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    .line 74
    :goto_0
    return-object v0

    .line 69
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    goto :goto_0

    .line 74
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContent()Lorg/spongycastle/asn1/ASN1OctetStringParser;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

    return-object v0
.end method

.method public getDataUri()Lorg/spongycastle/asn1/DERIA5String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getMetaData()Lorg/spongycastle/asn1/cms/MetaData;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    return-object v0
.end method

.method public getTemporalEvidence()Lorg/spongycastle/asn1/cms/Evidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Evidence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 120
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
