.class public Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;
.super Ljava/io/IOException;
.source "InvalidCipherTextIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;->cause:Ljava/lang/Throwable;

    .line 22
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
