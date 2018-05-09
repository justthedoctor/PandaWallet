.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;
.super Ljava/lang/Exception;
.source "PaymentChannelCloseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    }
.end annotation


# instance fields
.field private final error:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;->error:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 71
    return-void
.end method


# virtual methods
.method public getCloseReason()Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;->error:Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentChannelCloseException for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException;->getCloseReason()Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
