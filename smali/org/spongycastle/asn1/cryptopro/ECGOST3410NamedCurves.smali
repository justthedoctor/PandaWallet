.class public Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;
.super Ljava/lang/Object;
.source "ECGOST3410NamedCurves.java"


# static fields
.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;

.field static final params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 17
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    .line 18
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    .line 19
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    sput-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    .line 23
    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "mod_p":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, "mod_q":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "166"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 31
    .local v0, "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "1"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {v1, v0, v4, v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 38
    .local v1, "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v2, Ljava/math/BigInteger;

    .end local v2    # "mod_p":Ljava/math/BigInteger;
    const-string v4, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 41
    .restart local v2    # "mod_p":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3    # "mod_q":Ljava/math/BigInteger;
    const-string v4, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v3    # "mod_q":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .end local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "166"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 48
    .restart local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .end local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "1"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {v1, v0, v4, v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 55
    .restart local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v2, Ljava/math/BigInteger;

    .end local v2    # "mod_p":Ljava/math/BigInteger;
    const-string v4, "57896044618658097711785492504343953926634992332820282019728792003956564823193"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v2    # "mod_p":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3    # "mod_q":Ljava/math/BigInteger;
    const-string v4, "57896044618658097711785492504343953927102133160255826820068844496087732066703"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v3    # "mod_q":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .end local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "57896044618658097711785492504343953926634992332820282019728792003956564823190"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "28091019353058090096996979000309560759124368558014865957655842872397301267595"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 65
    .restart local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .end local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "1"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "28792665814854611296992347458380284135028636778229113005756334730996303888124"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {v1, v0, v4, v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 72
    .restart local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Ljava/math/BigInteger;

    .end local v2    # "mod_p":Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v2    # "mod_p":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3    # "mod_q":Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v3    # "mod_q":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .end local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "32858"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 82
    .restart local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .end local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {v1, v0, v4, v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 89
    .restart local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Ljava/math/BigInteger;

    .end local v2    # "mod_p":Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v2    # "mod_p":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    .end local v3    # "mod_q":Ljava/math/BigInteger;
    const-string v4, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v3    # "mod_q":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .end local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "32858"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 98
    .restart local v0    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .end local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {v1, v0, v4, v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 105
    .restart local v1    # "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-A"

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-B"

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-C"

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-XchA"

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    const-string v5, "GostR3410-2001-CryptoPro-XchB"

    sget-object v6, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-A"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-B"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-C"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-XchA"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v4, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "GostR3410-2001-CryptoPro-XchB"

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v1, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 146
    .local v0, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_0

    .line 148
    sget-object v1, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 151
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;
    .locals 1
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 129
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method

.method public static getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 160
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
