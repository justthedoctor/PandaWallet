.class Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;
.super Ljava/lang/Object;
.source "ASN1Parser.java"

# interfaces
.implements Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/crypto/ASN1Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ASN1Integer"
.end annotation


# instance fields
.field final value:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;->value:Ljava/math/BigInteger;

    .line 36
    return-void
.end method


# virtual methods
.method getValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;->value:Ljava/math/BigInteger;

    return-object v0
.end method
