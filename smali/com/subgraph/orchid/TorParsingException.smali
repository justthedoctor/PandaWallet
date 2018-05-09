.class public Lcom/subgraph/orchid/TorParsingException;
.super Lcom/subgraph/orchid/TorException;
.source "TorParsingException.java"


# static fields
.field private static final serialVersionUID:J = -0x455b99e41aa5ca87L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method
