.class public interface abstract Lcom/google/bitcoin/net/StreamParser;
.super Ljava/lang/Object;
.source "StreamParser.java"


# virtual methods
.method public abstract connectionClosed()V
.end method

.method public abstract connectionOpened()V
.end method

.method public abstract getMaxMessageSize()I
.end method

.method public abstract receiveBytes(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setWriteTarget(Lcom/google/bitcoin/net/MessageWriteTarget;)V
.end method
