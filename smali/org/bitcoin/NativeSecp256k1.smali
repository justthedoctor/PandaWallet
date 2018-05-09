.class public Lorg/bitcoin/NativeSecp256k1;
.super Ljava/lang/Object;
.source "NativeSecp256k1.java"


# static fields
.field public static enabled:Z

.field private static nativeECDSABuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    sput-boolean v2, Lorg/bitcoin/NativeSecp256k1;->enabled:Z

    .line 38
    :try_start_0
    const-string v1, "javasecp256k1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    return-void

    .line 39
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, Lorg/bitcoin/NativeSecp256k1;->enabled:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native secp256k1_ecdsa_verify(Ljava/nio/ByteBuffer;)I
.end method

.method public static verify([B[B[B)Z
    .locals 6
    .param p0, "data"    # [B
    .param p1, "signature"    # [B
    .param p2, "pub"    # [B

    .prologue
    const/16 v5, 0x208

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    array-length v1, p0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    array-length v1, p1

    if-gt v1, v5, :cond_1

    array-length v1, p2

    if-gt v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 56
    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 57
    .local v0, "byteBuff":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 58
    const/16 v1, 0x438

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 63
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    invoke-static {v0}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_ecdsa_verify(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .end local v0    # "byteBuff":Ljava/nio/ByteBuffer;
    :cond_1
    move v1, v3

    .line 54
    goto :goto_0

    .restart local v0    # "byteBuff":Ljava/nio/ByteBuffer;
    :cond_2
    move v2, v3

    .line 68
    goto :goto_1
.end method
