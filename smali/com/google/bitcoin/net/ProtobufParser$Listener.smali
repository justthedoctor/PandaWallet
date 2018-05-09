.class public interface abstract Lcom/google/bitcoin/net/ProtobufParser$Listener;
.super Ljava/lang/Object;
.source "ProtobufParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/net/ProtobufParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract connectionClosed(Lcom/google/bitcoin/net/ProtobufParser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/net/ProtobufParser",
            "<TMessageType;>;)V"
        }
    .end annotation
.end method

.method public abstract connectionOpen(Lcom/google/bitcoin/net/ProtobufParser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/net/ProtobufParser",
            "<TMessageType;>;)V"
        }
    .end annotation
.end method

.method public abstract messageReceived(Lcom/google/bitcoin/net/ProtobufParser;Lcom/google/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/net/ProtobufParser",
            "<TMessageType;>;TMessageType;)V"
        }
    .end annotation
.end method
