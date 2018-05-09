.class public Lcom/subgraph/orchid/directory/parsing/DocumentObject;
.super Ljava/lang/Object;
.source "DocumentObject.java"


# instance fields
.field private bodyContent:Ljava/lang/String;

.field private footerLine:Ljava/lang/String;

.field private final headerLine:Ljava/lang/String;

.field private final keyword:Ljava/lang/String;

.field private final stringContent:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "headerLine"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->keyword:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->headerLine:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method public addContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    return-void
.end method

.method public addFooterLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "footer"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->footerLine:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->bodyContent:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getContent(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Z)Ljava/lang/String;
    .locals 2
    .param p1, "includeHeaders"    # Z

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->headerLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->bodyContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->footerLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->bodyContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->keyword:Ljava/lang/String;

    return-object v0
.end method
