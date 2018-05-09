.class public Lcom/google/bitcoin/core/UnknownMessage;
.super Lcom/google/bitcoin/core/EmptyMessage;
.source "UnknownMessage.java"


# static fields
.field private static final serialVersionUID:J = 0x322a03e63660cab7L


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/google/bitcoin/core/EmptyMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 25
    iput-object p2, p0, Lcom/google/bitcoin/core/UnknownMessage;->name:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/core/UnknownMessage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/bitcoin/core/UnknownMessage;->bytes:[B

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/UnknownMessage;->bytes:[B

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
