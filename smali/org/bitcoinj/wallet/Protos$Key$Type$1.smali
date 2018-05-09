.class final Lorg/bitcoinj/wallet/Protos$Key$Type$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Key$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Key$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Type$1;->findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 1501
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Key$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v0

    return-object v0
.end method
