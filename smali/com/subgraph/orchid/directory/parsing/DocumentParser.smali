.class public interface abstract Lcom/subgraph/orchid/directory/parsing/DocumentParser;
.super Ljava/lang/Object;
.source "DocumentParser.java"


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
.method public abstract parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
            "<TT;>;)Z"
        }
    .end annotation
.end method
