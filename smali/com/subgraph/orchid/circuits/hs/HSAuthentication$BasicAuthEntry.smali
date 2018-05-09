.class Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
.super Ljava/lang/Object;
.source "HSAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/hs/HSAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicAuthEntry"
.end annotation


# instance fields
.field final id:[B

.field final skey:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0
    .param p1, "id"    # [B
    .param p2, "skey"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->id:[B

    .line 38
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->skey:[B

    .line 39
    return-void
.end method
