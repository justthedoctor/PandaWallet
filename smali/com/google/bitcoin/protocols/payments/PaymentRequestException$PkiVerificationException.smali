.class public Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
.super Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
.source "PaymentRequestException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkiVerificationException"
.end annotation


# instance fields
.field public certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    .line 104
    iput-object p2, p0, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;->certificates:Ljava/util/List;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method
