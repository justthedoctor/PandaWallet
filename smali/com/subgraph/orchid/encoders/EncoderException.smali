.class public Lcom/subgraph/orchid/encoders/EncoderException;
.super Ljava/lang/IllegalStateException;
.source "EncoderException.java"


# static fields
.field private static final serialVersionUID:J = 0x5b72360bc2ed2480L


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lcom/subgraph/orchid/encoders/EncoderException;->cause:Ljava/lang/Throwable;

    .line 14
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/subgraph/orchid/encoders/EncoderException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
