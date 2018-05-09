.class Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;
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
    name = "ASN1BitString"
.end annotation


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;->bytes:[B

    .line 48
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;->bytes:[B

    return-object v0
.end method
