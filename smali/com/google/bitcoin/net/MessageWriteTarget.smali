.class public interface abstract Lcom/google/bitcoin/net/MessageWriteTarget;
.super Ljava/lang/Object;
.source "MessageWriteTarget.java"


# virtual methods
.method public abstract closeConnection()V
.end method

.method public abstract writeBytes([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
