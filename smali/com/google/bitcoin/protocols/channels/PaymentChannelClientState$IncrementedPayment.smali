.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$IncrementedPayment;
.super Ljava/lang/Object;
.source "PaymentChannelClientState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncrementedPayment"
.end annotation


# instance fields
.field public amount:Ljava/math/BigInteger;

.field public signature:Lcom/google/bitcoin/crypto/TransactionSignature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
