.class public Lcom/subgraph/orchid/circuits/path/PathSelectionFailedException;
.super Ljava/lang/Exception;
.source "PathSelectionFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x7ae42d76e6f8811cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
