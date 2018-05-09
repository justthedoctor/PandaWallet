.class public interface abstract Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientVersionOrBuilder"
.end annotation


# virtual methods
.method public abstract getMajor()I
.end method

.method public abstract getMinor()I
.end method

.method public abstract getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasMajor()Z
.end method

.method public abstract hasMinor()Z
.end method

.method public abstract hasPreviousChannelContractHash()Z
.end method
