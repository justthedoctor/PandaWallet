.class public Lcom/google/bitcoin/jni/NativeFutureCallback;
.super Ljava/lang/Object;
.source "NativeFutureCallback.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onFailure(Ljava/lang/Throwable;)V
.end method

.method public native onSuccess(Ljava/lang/Object;)V
.end method
