.class public Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
.super Ljava/lang/Exception;
.source "PaymentRequestException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiData;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiType;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidNetwork;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidVersion;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentURL;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;,
        Lcom/google/bitcoin/protocols/payments/PaymentRequestException$Expired;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
