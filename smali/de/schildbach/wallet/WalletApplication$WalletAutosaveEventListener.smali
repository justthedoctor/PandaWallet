.class final Lde/schildbach/wallet/WalletApplication$WalletAutosaveEventListener;
.super Ljava/lang/Object;
.source "WalletApplication.java"

# interfaces
.implements Lcom/google/bitcoin/wallet/WalletFiles$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/WalletApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WalletAutosaveEventListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/WalletApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/WalletApplication$1;

    .prologue
    .line 193
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication$WalletAutosaveEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterAutoSave(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 204
    sget-boolean v0, Lde/schildbach/wallet/Constants;->TEST:Z

    if-eqz v0, :cond_0

    .line 205
    const/16 v0, 0x1ff

    invoke-static {p1, v0}, Lde/schildbach/wallet/util/Io;->chmod(Ljava/io/File;I)V

    .line 206
    :cond_0
    return-void
.end method

.method public onBeforeAutoSave(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 198
    return-void
.end method
