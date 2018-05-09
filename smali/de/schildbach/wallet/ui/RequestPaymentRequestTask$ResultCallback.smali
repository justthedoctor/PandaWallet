.class public interface abstract Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
.super Ljava/lang/Object;
.source "RequestPaymentRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/RequestPaymentRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultCallback"
.end annotation


# virtual methods
.method public varargs abstract onFail(I[Ljava/lang/Object;)V
.end method

.method public abstract onPaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
.end method
