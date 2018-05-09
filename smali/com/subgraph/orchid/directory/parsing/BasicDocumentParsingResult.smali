.class public Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;
.super Ljava/lang/Object;
.source "BasicDocumentParsingResult.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
        "<TT;>;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final documents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private invalidDocument:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isError:Z

.field private isInvalid:Z

.field private isOkay:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    .line 18
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isInvalid:Z

    .line 19
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isError:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    .local p1, "document":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isInvalid:Z

    .line 61
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->invalidDocument:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public documentParsed(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    .local p1, "document":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public getDocument()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidDocument()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->invalidDocument:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedDocuments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isError:Z

    return v0
.end method

.method public isInvalid()Z
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isInvalid:Z

    return v0
.end method

.method public isOkay()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    return v0
.end method

.method public parsingError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    .local p0, "this":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isError:Z

    .line 68
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    .line 69
    return-void
.end method
