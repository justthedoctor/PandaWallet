.class public Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
.super Ljava/lang/Object;
.source "PaymentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/payments/PaymentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkiVerificationData"
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final merchantSigningKey:Ljava/security/PublicKey;

.field public final rootAuthority:Ljava/security/cert/TrustAnchor;

.field public final rootAuthorityName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;)V
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "merchantSigningKey"    # Ljava/security/PublicKey;
    .param p3, "rootAuthority"    # Ljava/security/cert/TrustAnchor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    :try_start_0
    iput-object p1, p0, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;->displayName:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;->merchantSigningKey:Ljava/security/PublicKey;

    .line 213
    iput-object p3, p0, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;->rootAuthority:Ljava/security/cert/TrustAnchor;

    .line 214
    invoke-virtual {p3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/bitcoin/crypto/X509Utils;->getDisplayNameFromCertificate(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;->rootAuthorityName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "x":Ljava/security/cert/CertificateParsingException;
    new-instance v1, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;Lcom/google/bitcoin/protocols/payments/PaymentProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/security/PublicKey;
    .param p3, "x2"    # Ljava/security/cert/TrustAnchor;
    .param p4, "x3"    # Lcom/google/bitcoin/protocols/payments/PaymentProtocol$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;-><init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;)V

    return-void
.end method
