.class public Lcom/google/bitcoin/testing/FakeTxBuilder$DoubleSpends;
.super Ljava/lang/Object;
.source "FakeTxBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/testing/FakeTxBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleSpends"
.end annotation


# instance fields
.field public prevTx:Lcom/google/bitcoin/core/Transaction;

.field public t1:Lcom/google/bitcoin/core/Transaction;

.field public t2:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
