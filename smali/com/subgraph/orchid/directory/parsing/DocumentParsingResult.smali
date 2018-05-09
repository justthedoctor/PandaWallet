.class public interface abstract Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
.super Ljava/lang/Object;
.source "DocumentParsingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDocument()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getInvalidDocument()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getParsedDocuments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract isError()Z
.end method

.method public abstract isInvalid()Z
.end method

.method public abstract isOkay()Z
.end method
