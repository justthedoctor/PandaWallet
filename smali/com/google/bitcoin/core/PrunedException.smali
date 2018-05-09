.class public Lcom/google/bitcoin/core/PrunedException;
.super Ljava/lang/Exception;
.source "PrunedException.java"


# instance fields
.field private hash:Lcom/google/bitcoin/core/Sha256Hash;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 1
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/google/bitcoin/core/PrunedException;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 33
    return-void
.end method


# virtual methods
.method public getHash()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/bitcoin/core/PrunedException;->hash:Lcom/google/bitcoin/core/Sha256Hash;

    return-object v0
.end method
