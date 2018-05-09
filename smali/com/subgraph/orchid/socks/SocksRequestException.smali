.class public Lcom/subgraph/orchid/socks/SocksRequestException;
.super Ljava/lang/Exception;
.source "SocksRequestException.java"


# static fields
.field private static final serialVersionUID:J = 0xbb6af9a0bdf7579L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 14
    return-void
.end method
