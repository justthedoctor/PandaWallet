.class public interface abstract Lcom/google/bitcoin/wallet/WalletFiles$Listener;
.super Ljava/lang/Object;
.source "WalletFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/wallet/WalletFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAfterAutoSave(Ljava/io/File;)V
.end method

.method public abstract onBeforeAutoSave(Ljava/io/File;)V
.end method
