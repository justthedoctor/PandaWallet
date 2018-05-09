.class Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser$1;
.super Ljava/lang/Object;
.source "KeyCertificateParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser$1;->this$0:Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endOfDocument()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public parseKeywordLine()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser$1;->this$0:Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;->access$000(Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;)V

    .line 30
    return-void
.end method
