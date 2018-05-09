.class public interface abstract Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "X509CertificatesOrBuilder"
.end annotation


# virtual methods
.method public abstract getCertificate(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCertificateCount()I
.end method

.method public abstract getCertificateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method
