.class final Lorg/bitcoinj/wallet/Protos$Transaction$Purpose$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
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
        "Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 6986
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose$1;->findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 6988
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v0

    return-object v0
.end method
