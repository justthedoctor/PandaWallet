.class public Lcom/lambdaworks/jni/SystemLibraryLoader;
.super Ljava/lang/Object;
.source "SystemLibraryLoader.java"

# interfaces
.implements Lcom/lambdaworks/jni/LibraryLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "verify"    # Z

    .prologue
    .line 24
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const/4 v1, 0x1

    .line 30
    .local v1, "loaded":Z
    :goto_0
    return v1

    .line 26
    .end local v1    # "loaded":Z
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .restart local v1    # "loaded":Z
    goto :goto_0
.end method
