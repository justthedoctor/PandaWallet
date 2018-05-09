.class public Lcom/subgraph/orchid/ConnectionTimeoutException;
.super Lcom/subgraph/orchid/ConnectionIOException;
.source "ConnectionTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x54a2cc6c1e4f98f7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/subgraph/orchid/ConnectionIOException;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
