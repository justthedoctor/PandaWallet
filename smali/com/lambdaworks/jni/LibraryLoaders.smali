.class public Lcom/lambdaworks/jni/LibraryLoaders;
.super Ljava/lang/Object;
.source "LibraryLoaders.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loader()Lcom/lambdaworks/jni/LibraryLoader;
    .locals 2

    .prologue
    .line 18
    const-string v1, "java.vm.specification.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "vmSpec":Ljava/lang/String;
    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/lambdaworks/jni/JarLibraryLoader;

    invoke-direct {v1}, Lcom/lambdaworks/jni/JarLibraryLoader;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/lambdaworks/jni/SystemLibraryLoader;

    invoke-direct {v1}, Lcom/lambdaworks/jni/SystemLibraryLoader;-><init>()V

    goto :goto_0
.end method
