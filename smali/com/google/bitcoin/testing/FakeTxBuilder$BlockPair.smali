.class public Lcom/google/bitcoin/testing/FakeTxBuilder$BlockPair;
.super Ljava/lang/Object;
.source "FakeTxBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/testing/FakeTxBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockPair"
.end annotation


# instance fields
.field public block:Lcom/google/bitcoin/core/Block;

.field public storedBlock:Lcom/google/bitcoin/core/StoredBlock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
