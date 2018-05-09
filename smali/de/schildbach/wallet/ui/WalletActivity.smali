.class public final Lde/schildbach/wallet/ui/WalletActivity;
.super Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;
.source "WalletActivity.java"


# static fields
.field private static final DIALOG_EXPORT_KEYS:I = 0x1

.field private static final DIALOG_IMPORT_KEYS:I = 0x0

.field private static final DIALOG_LOW_STORAGE_ALERT:I = 0x4

.field private static final DIALOG_TIMESKEW_ALERT:I = 0x2

.field private static final DIALOG_VERSION_ALERT:I = 0x3

.field private static final REQUEST_CODE_SCAN:I


# instance fields
.field private application:Lde/schildbach/wallet/WalletApplication;

.field private config:Lde/schildbach/wallet/Configuration;

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/WalletActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletActivity;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/ui/WalletActivity;->importPrivateKeys(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/WalletActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/WalletActivity;->exportPrivateKeys(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/WalletActivity;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/WalletActivity;)Lde/schildbach/wallet/WalletApplication;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/WalletActivity;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletActivity;

    .prologue
    .line 100
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/WalletActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/WalletActivity;->mailPrivateKeys(Ljava/io/File;)V

    return-void
.end method

.method private checkAlerts()V
    .locals 11

    .prologue
    .line 580
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/WalletApplication;->packageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 581
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 582
    .local v9, "versionNameSplit":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://wallet.schildbach.de/version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ltz v9, :cond_1

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, "base":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, "url":Ljava/lang/String;
    invoke-static {}, Lde/schildbach/wallet/util/CrashReporter;->hasSavedCrashTrace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v6, "stackTrace":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {v6}, Lde/schildbach/wallet/util/CrashReporter;->appendSavedCrashTrace(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_1
    new-instance v0, Lde/schildbach/wallet/ui/WalletActivity$13;

    const v3, 0x7f0b00d0

    const v4, 0x7f0b00d2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lde/schildbach/wallet/ui/WalletActivity$13;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Context;IILandroid/content/pm/PackageInfo;Ljava/lang/StringBuilder;)V

    .line 701
    .local v0, "dialog":Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 703
    .end local v0    # "dialog":Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;
    .end local v6    # "stackTrace":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 582
    .end local v7    # "base":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 655
    .restart local v6    # "stackTrace":Ljava/lang/StringBuilder;
    .restart local v7    # "base":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 657
    .local v10, "x":Ljava/io/IOException;
    sget-object v1, Lde/schildbach/wallet/ui/WalletActivity;->log:Lorg/slf4j/Logger;

    const-string v2, "problem appending crash info"

    invoke-interface {v1, v2, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private checkLowStorageAlert()V
    .locals 4

    .prologue
    .line 556
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lde/schildbach/wallet/ui/WalletActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 557
    .local v0, "stickyIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 558
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->showDialog(I)V

    .line 559
    :cond_0
    return-void
.end method

.method private createExportKeysDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 502
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 503
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 505
    .local v1, "passwordView":Landroid/widget/EditText;
    new-instance v0, Lde/schildbach/wallet/ui/DialogBuilder;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v3, 0x7f0b00a4

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 507
    invoke-virtual {v0, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 508
    const v3, 0x7f0b00a6

    new-instance v4, Lde/schildbach/wallet/ui/WalletActivity$9;

    invoke-direct {v4, p0, v1}, Lde/schildbach/wallet/ui/WalletActivity$9;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    const v3, 0x7f0b00ed

    new-instance v4, Lde/schildbach/wallet/ui/WalletActivity$10;

    invoke-direct {v4, p0, v1}, Lde/schildbach/wallet/ui/WalletActivity$10;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    new-instance v3, Lde/schildbach/wallet/ui/WalletActivity$11;

    invoke-direct {v3, p0, v1}, Lde/schildbach/wallet/ui/WalletActivity$11;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private createImportKeysDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 370
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030020

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 371
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f060040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 372
    .local v2, "fileView":Landroid/widget/Spinner;
    const v5, 0x7f060041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 374
    .local v3, "passwordView":Landroid/widget/EditText;
    new-instance v1, Lde/schildbach/wallet/ui/DialogBuilder;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v1, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v5, 0x7f0b0095

    invoke-virtual {v1, v5}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 376
    invoke-virtual {v1, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 377
    const v5, 0x7f0b009e

    new-instance v6, Lde/schildbach/wallet/ui/WalletActivity$3;

    invoke-direct {v6, p0, v2, v3}, Lde/schildbach/wallet/ui/WalletActivity$3;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    const v5, 0x7f0b00ed

    new-instance v6, Lde/schildbach/wallet/ui/WalletActivity$4;

    invoke-direct {v6, p0, v3}, Lde/schildbach/wallet/ui/WalletActivity$4;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    new-instance v5, Lde/schildbach/wallet/ui/WalletActivity$5;

    invoke-direct {v5, p0, v3}, Lde/schildbach/wallet/ui/WalletActivity$5;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Lde/schildbach/wallet/ui/DialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    new-instance v0, Lde/schildbach/wallet/ui/WalletActivity$6;

    invoke-direct {v0, p0, p0}, Lde/schildbach/wallet/ui/WalletActivity$6;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Context;)V

    .line 438
    .local v0, "adapter":Lde/schildbach/wallet/ui/FileAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 440
    invoke-virtual {v1}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method private createLowStorageAlertDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 563
    const v1, 0x7f0b0032

    invoke-static {p0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    .line 564
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 565
    const v1, 0x7f0b0034

    new-instance v2, Lde/schildbach/wallet/ui/WalletActivity$12;

    invoke-direct {v2, p0}, Lde/schildbach/wallet/ui/WalletActivity$12;-><init>(Lde/schildbach/wallet/ui/WalletActivity;)V

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    const v1, 0x7f0b00ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createTimeskewAlertDialog(J)Landroid/app/Dialog;
    .locals 7
    .param p1, "diffMinutes"    # J

    .prologue
    const/4 v6, 0x0

    .line 707
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 708
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v2, "settingsIntent":Landroid/content/Intent;
    const v3, 0x7f0b0035

    invoke-static {p0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    .line 711
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v3, 0x7f0b0036

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 713
    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 715
    const v3, 0x7f0b00fb

    new-instance v4, Lde/schildbach/wallet/ui/WalletActivity$14;

    invoke-direct {v4, p0, v2}, Lde/schildbach/wallet/ui/WalletActivity$14;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    :cond_0
    const v3, 0x7f0b00ec

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private createVersionAlertDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 732
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 733
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "market://details?id=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 734
    .local v2, "marketIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    sget-object v6, Lde/schildbach/wallet/Constants;->BINARY_URL:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 736
    .local v0, "binaryIntent":Landroid/content/Intent;
    const v5, 0x7f0b0037

    invoke-static {p0, v5}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v1

    .line 737
    .local v1, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const v5, 0x7f0b0038

    invoke-virtual {p0, v5}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .local v3, "message":Ljava/lang/StringBuilder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_0

    .line 739
    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b0039

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_0
    invoke-virtual {v1, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 742
    invoke-virtual {v4, v2, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 744
    const v5, 0x7f0b003a

    new-instance v6, Lde/schildbach/wallet/ui/WalletActivity$15;

    invoke-direct {v6, p0, v2}, Lde/schildbach/wallet/ui/WalletActivity$15;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v5, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    :cond_1
    invoke-virtual {v4, v0, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 757
    const v5, 0x7f0b003b

    new-instance v6, Lde/schildbach/wallet/ui/WalletActivity$16;

    invoke-direct {v6, p0, v0}, Lde/schildbach/wallet/ui/WalletActivity$16;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v5, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 768
    :cond_2
    const v5, 0x7f0b00ec

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    invoke-virtual {v1}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method private exportPrivateKeys(Ljava/lang/String;)V
    .locals 15
    .param p1, "password"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 871
    :try_start_0
    sget-object v11, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 872
    invoke-static {}, Lde/schildbach/wallet/util/Iso8601Format;->newDateFormat()Ljava/text/DateFormat;

    move-result-object v2

    .line 873
    .local v2, "dateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 874
    new-instance v4, Ljava/io/File;

    sget-object v11, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_KEY_BACKUP:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 877
    .local v4, "file":Ljava/io/File;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 878
    .local v7, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v11, p0, Lde/schildbach/wallet/ui/WalletActivity;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v11}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/ECKey;

    .line 879
    .local v6, "key":Lcom/google/bitcoin/core/ECKey;
    iget-object v11, p0, Lde/schildbach/wallet/ui/WalletActivity;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v11, v6}, Lcom/google/bitcoin/core/Wallet;->isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 880
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v7    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    :catch_0
    move-exception v10

    .line 910
    .local v10, "x":Ljava/io/IOException;
    const v11, 0x7f0b00b0

    invoke-static {p0, v11}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v3

    .line 911
    .local v3, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v11, 0x7f0b00a8

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 912
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lde/schildbach/wallet/ui/DialogBuilder;->singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 913
    invoke-virtual {v3}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 915
    sget-object v11, Lde/schildbach/wallet/ui/WalletActivity;->log:Lorg/slf4j/Logger;

    const-string v12, "problem writing private keys"

    invoke-interface {v11, v12, v10}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 917
    .end local v10    # "x":Ljava/io/IOException;
    :goto_1
    return-void

    .line 882
    .end local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    .restart local v2    # "dateFormat":Ljava/text/DateFormat;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    :cond_1
    :try_start_1
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 883
    .local v8, "plainOut":Ljava/io/StringWriter;
    invoke-static {v8, v7}, Lde/schildbach/wallet/util/WalletUtils;->writeKeys(Ljava/io/Writer;Ljava/util/List;)V

    .line 884
    invoke-virtual {v8}, Ljava/io/StringWriter;->close()V

    .line 885
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 887
    .local v9, "plainText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v9, v11}, Lde/schildbach/wallet/util/Crypto;->encrypt(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "cipherText":Ljava/lang/String;
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v12, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 890
    .local v0, "cipherOut":Ljava/io/Writer;
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 891
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 893
    new-instance v3, Lde/schildbach/wallet/ui/DialogBuilder;

    invoke-direct {v3, p0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 894
    .restart local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v11, 0x7f0b00a7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-virtual {p0, v11, v12}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 895
    const v11, 0x7f0b00a9

    new-instance v12, Lde/schildbach/wallet/ui/WalletActivity$19;

    invoke-direct {v12, p0, v4}, Lde/schildbach/wallet/ui/WalletActivity$19;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Ljava/io/File;)V

    invoke-virtual {v3, v11, v12}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 903
    const v11, 0x7f0b00ec

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {v3}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 906
    sget-object v11, Lde/schildbach/wallet/ui/WalletActivity;->log:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exported "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " private keys to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleDisconnect()V
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->stopBlockchainService()V

    .line 326
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->finish()V

    .line 327
    return-void
.end method

.method private handleDonate()V
    .locals 3

    .prologue
    .line 333
    :try_start_0
    const-string v1, "PBAdSebKmFuDUJP257xReuLnijkAtsP25E"

    const v2, 0x7f0b0031

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/schildbach/wallet/PaymentIntent;->fromAddress(Ljava/lang/String;Ljava/lang/String;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v1

    invoke-static {p0, v1}, Lde/schildbach/wallet/ui/SendCoinsActivity;->start(Landroid/content/Context;Lde/schildbach/wallet/PaymentIntent;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 338
    .local v0, "x":Lcom/google/bitcoin/core/AddressFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "inputType":Ljava/lang/String;
    const-string v4, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 157
    .local v3, "ndefMessage":Landroid/nfc/NdefMessage;
    sget-object v4, Lde/schildbach/wallet/Constants;->MIMETYPE_TRANSACTION:Ljava/lang/String;

    invoke-static {v4, v3}, Lde/schildbach/wallet/util/Nfc;->extractMimePayload(Ljava/lang/String;Landroid/nfc/NdefMessage;)[B

    move-result-object v1

    .line 159
    .local v1, "input":[B
    new-instance v4, Lde/schildbach/wallet/ui/WalletActivity$1;

    invoke-direct {v4, p0, v2, v1, v2}, Lde/schildbach/wallet/ui/WalletActivity$1;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v4}, Lde/schildbach/wallet/ui/WalletActivity$1;->parse()V

    .line 180
    .end local v1    # "input":[B
    .end local v2    # "inputType":Ljava/lang/String;
    .end local v3    # "ndefMessage":Landroid/nfc/NdefMessage;
    :cond_0
    return-void
.end method

.method private importPrivateKeys(Ljava/io/File;Ljava/lang/String;)V
    .locals 17
    .param p1, "file"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "password"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 777
    :try_start_0
    sget-object v13, Lde/schildbach/wallet/util/Crypto;->OPENSSL_FILE_FILTER:Ljava/io/FileFilter;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 779
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v15, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 780
    .local v1, "cipherIn":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .local v2, "cipherText":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 791
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v13, v14}, Lde/schildbach/wallet/util/Crypto;->decrypt(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v11

    .line 792
    .local v11, "plainText":Ljava/lang/String;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 803
    .end local v1    # "cipherIn":Ljava/io/BufferedReader;
    .end local v2    # "cipherText":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    .end local v11    # "plainText":Ljava/lang/String;
    .local v10, "plainReader":Ljava/io/Reader;
    :goto_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 804
    .local v5, "keyReader":Ljava/io/BufferedReader;
    invoke-static {v5}, Lde/schildbach/wallet/util/WalletUtils;->readKeys(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v4

    .line 805
    .local v4, "importedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 807
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 808
    .local v9, "numKeysToImport":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/WalletActivity;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v13, v4}, Lcom/google/bitcoin/core/Wallet;->addKeys(Ljava/util/List;)I

    move-result v8

    .line 810
    .local v8, "numKeysImported":I
    new-instance v3, Lde/schildbach/wallet/ui/DialogBuilder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 811
    .local v3, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .local v7, "message":Ljava/lang/StringBuilder;
    if-lez v8, :cond_0

    .line 813
    const v13, 0x7f0b009f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_0
    if-ge v8, v9, :cond_2

    .line 816
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 817
    const/16 v13, 0xa

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    :cond_1
    const v13, 0x7f0b00a0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sub-int v16, v9, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_2
    if-lez v8, :cond_4

    .line 822
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 823
    const-string v13, "\n\n"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :cond_3
    const v13, 0x7f0b00a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_4
    invoke-virtual {v3, v7}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 827
    if-lez v8, :cond_8

    .line 829
    const v13, 0x7f0b00a3

    new-instance v14, Lde/schildbach/wallet/ui/WalletActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lde/schildbach/wallet/ui/WalletActivity$17;-><init>(Lde/schildbach/wallet/ui/WalletActivity;)V

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 838
    const v13, 0x7f0b00ec

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 844
    :goto_2
    invoke-virtual {v3}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 846
    sget-object v13, Lde/schildbach/wallet/ui/WalletActivity;->log:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " private keys"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 865
    .end local v4    # "importedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v5    # "keyReader":Ljava/io/BufferedReader;
    .end local v7    # "message":Ljava/lang/StringBuilder;
    .end local v8    # "numKeysImported":I
    .end local v9    # "numKeysToImport":I
    .end local v10    # "plainReader":Ljava/io/Reader;
    :goto_3
    return-void

    .line 787
    .end local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    .restart local v1    # "cipherIn":Ljava/io/BufferedReader;
    .restart local v2    # "cipherText":Ljava/lang/StringBuilder;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 848
    .end local v1    # "cipherIn":Ljava/io/BufferedReader;
    .end local v2    # "cipherText":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 850
    .local v12, "x":Ljava/io/IOException;
    const v13, 0x7f0b00b0

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v3

    .line 851
    .restart local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v13, 0x7f0b00a2

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 852
    const v13, 0x7f0b00ec

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 853
    const v13, 0x7f0b00ee

    new-instance v14, Lde/schildbach/wallet/ui/WalletActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lde/schildbach/wallet/ui/WalletActivity$18;-><init>(Lde/schildbach/wallet/ui/WalletActivity;)V

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 861
    invoke-virtual {v3}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 863
    sget-object v13, Lde/schildbach/wallet/ui/WalletActivity;->log:Lorg/slf4j/Logger;

    const-string v14, "problem reading private keys"

    invoke-interface {v13, v14, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 794
    .end local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    .end local v12    # "x":Ljava/io/IOException;
    :cond_6
    :try_start_1
    sget-object v13, Lde/schildbach/wallet/util/WalletUtils;->KEYS_FILE_FILTER:Ljava/io/FileFilter;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 796
    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v14, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .restart local v10    # "plainReader":Ljava/io/Reader;
    goto/16 :goto_1

    .line 800
    .end local v10    # "plainReader":Ljava/io/Reader;
    :cond_7
    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 842
    .restart local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    .restart local v4    # "importedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .restart local v5    # "keyReader":Ljava/io/BufferedReader;
    .restart local v7    # "message":Ljava/lang/StringBuilder;
    .restart local v8    # "numKeysImported":I
    .restart local v9    # "numKeysToImport":I
    .restart local v10    # "plainReader":Ljava/io/Reader;
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lde/schildbach/wallet/ui/DialogBuilder;->singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private mailPrivateKeys(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 921
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    const v3, 0x7f0b00aa

    invoke-virtual {p0, v3}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b00ab

    invoke-virtual {p0, v4}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "https://play.google.com/store/apps/details?id=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lde/schildbach/wallet/Constants;->SOURCE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    sget-object v2, Lde/schildbach/wallet/Constants;->MIMETYPE_BACKUP_PRIVATE_KEYS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 932
    const v2, 0x7f0b00ac

    :try_start_0
    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/WalletActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    .line 933
    sget-object v2, Lde/schildbach/wallet/ui/WalletActivity;->log:Lorg/slf4j/Logger;

    const-string v3, "invoked chooser for archiving private keys"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v1

    .line 937
    .local v1, "x":Ljava/lang/Exception;
    const v2, 0x7f0b00ad

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lde/schildbach/wallet/ui/WalletActivity;->longToast(I[Ljava/lang/Object;)V

    .line 938
    sget-object v2, Lde/schildbach/wallet/ui/WalletActivity;->log:Lorg/slf4j/Logger;

    const-string v3, "archiving private keys failed"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private prepareExportKeysDialog(Landroid/app/Dialog;)V
    .locals 5
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 542
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 544
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v4, 0x7f06003c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 545
    .local v2, "passwordView":Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    new-instance v1, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;

    invoke-direct {v1, v2, v0}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;-><init>(Landroid/widget/TextView;Landroid/app/AlertDialog;)V

    .line 548
    .local v1, "dialogButtonEnabler":Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 550
    const v4, 0x7f06003d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 551
    .local v3, "showView":Landroid/widget/CheckBox;
    new-instance v4, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;

    invoke-direct {v4, v2}, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 552
    return-void
.end method

.method private prepareImportKeysDialog(Landroid/app/Dialog;)V
    .locals 14
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 445
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    .line 447
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 450
    .local v7, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v12, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v12, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 451
    sget-object v12, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "arr$":[Ljava/io/File;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v4, v2, v8

    .line 452
    .local v4, "file":Ljava/io/File;
    sget-object v12, Lde/schildbach/wallet/util/WalletUtils;->KEYS_FILE_FILTER:Ljava/io/FileFilter;

    invoke-interface {v12, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Lde/schildbach/wallet/util/Crypto;->OPENSSL_FILE_FILTER:Ljava/io/FileFilter;

    invoke-interface {v12, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 453
    :cond_0
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 456
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_2
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->fileList()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v6, v2, v8

    .line 457
    .local v6, "filename":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_BASE58:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 458
    new-instance v12, Ljava/io/File;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 461
    .end local v6    # "filename":Ljava/lang/String;
    :cond_4
    new-instance v12, Lde/schildbach/wallet/ui/WalletActivity$7;

    invoke-direct {v12, p0}, Lde/schildbach/wallet/ui/WalletActivity$7;-><init>(Lde/schildbach/wallet/ui/WalletActivity;)V

    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    const v12, 0x7f060040

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 471
    .local v5, "fileView":Landroid/widget/Spinner;
    invoke-virtual {v5}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/FileAdapter;

    .line 472
    .local v0, "adapter":Lde/schildbach/wallet/ui/FileAdapter;
    invoke-virtual {v0, v7}, Lde/schildbach/wallet/ui/FileAdapter;->setFiles(Ljava/util/List;)V

    .line 473
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/FileAdapter;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v5, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 475
    const v12, 0x7f060041

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 476
    .local v10, "passwordView":Landroid/widget/EditText;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    new-instance v3, Lde/schildbach/wallet/ui/WalletActivity$8;

    invoke-direct {v3, p0, v10, v1, v5}, Lde/schildbach/wallet/ui/WalletActivity$8;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/TextView;Landroid/app/AlertDialog;Landroid/widget/Spinner;)V

    .line 493
    .local v3, "dialogButtonEnabler":Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;
    invoke-virtual {v10, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 494
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 496
    const v12, 0x7f060042

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 497
    .local v11, "showView":Landroid/widget/CheckBox;
    new-instance v12, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;

    invoke-direct {v12, v10}, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 498
    return-void

    .line 473
    .end local v3    # "dialogButtonEnabler":Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;
    .end local v10    # "passwordView":Landroid/widget/EditText;
    .end local v11    # "showView":Landroid/widget/CheckBox;
    :cond_5
    const/4 v12, 0x0

    goto :goto_2
.end method


# virtual methods
.method public handleExportKeys()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/WalletActivity;->showDialog(I)V

    .line 322
    return-void
.end method

.method public handleRequestCoins()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/ui/RequestCoinsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method public handleScan()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    return-void
.end method

.method public handleSendCoins()V
    .locals 2

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/ui/SendCoinsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 187
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Lde/schildbach/wallet/ui/WalletActivity$2;

    invoke-direct {v1, p0, v0}, Lde/schildbach/wallet/ui/WalletActivity$2;-><init>(Lde/schildbach/wallet/ui/WalletActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/WalletActivity$2;->parse()V

    .line 210
    .end local v0    # "input":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->application:Lde/schildbach/wallet/WalletApplication;

    .line 120
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->config:Lde/schildbach/wallet/Configuration;

    .line 121
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 123
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/WalletActivity;->setContentView(I)V

    .line 125
    if-nez p1, :cond_0

    .line 126
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->checkAlerts()V

    .line 128
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0}, Lde/schildbach/wallet/Configuration;->touchLastUsed()V

    .line 130
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/schildbach/wallet/ui/WalletActivity;->handleIntent(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->createImportKeysDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 348
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->createExportKeysDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 350
    const-string v0, "diff_minutes"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->createTimeskewAlertDialog(J)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 352
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->createVersionAlertDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 354
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->createLowStorageAlertDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 215
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 217
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e000b

    invoke-virtual {v0, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 218
    const v0, 0x7f0600c9

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    sget-boolean v0, Lde/schildbach/wallet/Constants;->TEST:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 220
    return v1

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/WalletActivity;->handleIntent(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 242
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 301
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 245
    :pswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->handleRequestCoins()V

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->handleSendCoins()V

    goto :goto_0

    .line 253
    :pswitch_2
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->handleScan()V

    goto :goto_0

    .line 257
    :pswitch_3
    invoke-static {p0, v0}, Lde/schildbach/wallet/ui/AddressBookActivity;->start(Landroid/content/Context;Z)V

    goto :goto_0

    .line 261
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/schildbach/wallet/ui/ExchangeRatesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/schildbach/wallet/ui/NetworkMonitorActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->showDialog(I)V

    goto :goto_0

    .line 273
    :pswitch_7
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->handleExportKeys()V

    goto :goto_0

    .line 277
    :pswitch_8
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->handleDisconnect()V

    goto :goto_0

    .line 281
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/schildbach/wallet/ui/PreferencesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/schildbach/wallet/ui/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 289
    :pswitch_b
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0108

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/HelpDialogFragment;->page(Landroid/support/v4/app/FragmentManager;I)V

    goto :goto_0

    .line 293
    :pswitch_c
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->handleDonate()V

    goto :goto_0

    .line 297
    :pswitch_d
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0105

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/HelpDialogFragment;->page(Landroid/support/v4/app/FragmentManager;I)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x7f0600bd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 362
    if-nez p1, :cond_1

    .line 363
    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/WalletActivity;->prepareImportKeysDialog(Landroid/app/Dialog;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 365
    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/WalletActivity;->prepareExportKeysDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 226
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 228
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 229
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "externalStorageState":Ljava/lang/String;
    const v2, 0x7f0600c1

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const v4, 0x7f070009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 232
    const v2, 0x7f0600c4

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v4, v2}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 234
    const v2, 0x7f0600c3

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 235
    const v2, 0x7f0600c5

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 236
    return v3

    .line 232
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/WalletApplication;->startBlockchainService(Z)V

    .line 140
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletActivity;->checkLowStorageAlert()V

    .line 141
    return-void
.end method
