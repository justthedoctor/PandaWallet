.class public Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiData;
.super Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
.source "PaymentRequestException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidPkiData"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method
