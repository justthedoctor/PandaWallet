.class public Lcom/subgraph/orchid/ConnectionFailedException;
.super Lcom/subgraph/orchid/ConnectionIOException;
.source "ConnectionFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x3e3b99fad5f00d86L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/ConnectionIOException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
