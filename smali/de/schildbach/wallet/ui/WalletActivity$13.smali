.class Lde/schildbach/wallet/ui/WalletActivity$13;
.super Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;
.source "WalletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->checkAlerts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$packageInfo:Landroid/content/pm/PackageInfo;

.field final synthetic val$stackTrace:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Context;IILandroid/content/pm/PackageInfo;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .prologue
    .line 662
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p5, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iput-object p6, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->val$stackTrace:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, p3, p4}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected collectApplicationInfo()Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v0, "applicationInfo":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletActivity;->access$300(Lde/schildbach/wallet/ui/WalletActivity;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/CrashReporter;->appendApplicationInfo(Ljava/lang/Appendable;Lde/schildbach/wallet/WalletApplication;)V

    .line 674
    return-object v0
.end method

.method protected collectDeviceInfo()Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v0, "deviceInfo":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/CrashReporter;->appendDeviceInfo(Ljava/lang/Appendable;Landroid/content/Context;)V

    .line 691
    return-object v0
.end method

.method protected collectStackTrace()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->val$stackTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 681
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->val$stackTrace:Ljava/lang/StringBuilder;

    .line 683
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected collectWalletDump()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 697
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletActivity;->access$400(Lde/schildbach/wallet/ui/WalletActivity;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/google/bitcoin/core/Wallet;->toString(ZZZLcom/google/bitcoin/core/AbstractBlockChain;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected subject()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crash report "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$13;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
