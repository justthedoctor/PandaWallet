.class public Lorg/spongycastle/asn1/misc/VerisignCzagExtension;
.super Lorg/spongycastle/asn1/DERIA5String;
.source "VerisignCzagExtension.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/DERIA5String;)V
    .locals 1
    .param p1, "str"    # Lorg/spongycastle/asn1/DERIA5String;

    .prologue
    .line 11
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerisignCzagExtension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/misc/VerisignCzagExtension;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
