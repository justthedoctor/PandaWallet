.class Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;
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
    name = "ASN1Sequence"
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;->items:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;->items:Ljava/util/List;

    return-object v0
.end method
