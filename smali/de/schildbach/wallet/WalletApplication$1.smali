.class Lde/schildbach/wallet/WalletApplication$1;
.super Ljava/lang/Object;
.source "WalletApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/WalletApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/WalletApplication;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/WalletApplication;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lde/schildbach/wallet/WalletApplication$1;->this$0:Lde/schildbach/wallet/WalletApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    invoke-static {}, Lde/schildbach/wallet/WalletApplication;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Pandacoinj uncaught exception"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication$1;->this$0:Lde/schildbach/wallet/WalletApplication;

    invoke-static {v0}, Lde/schildbach/wallet/WalletApplication;->access$100(Lde/schildbach/wallet/WalletApplication;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p2, v0}, Lde/schildbach/wallet/util/CrashReporter;->saveBackgroundTrace(Ljava/lang/Throwable;Landroid/content/pm/PackageInfo;)V

    .line 118
    return-void
.end method
