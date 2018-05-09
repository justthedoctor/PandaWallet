.class public Lcom/subgraph/orchid/ConnectionHandshakeException;
.super Lcom/subgraph/orchid/ConnectionIOException;
.source "ConnectionHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = -0x23505aa31469a81eL


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
