.class final Lorg/bitcoinj/wallet/Protos$Extension$1;
.super Lcom/google/protobuf/AbstractParser;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Extension;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9930
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9930
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9935
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method
