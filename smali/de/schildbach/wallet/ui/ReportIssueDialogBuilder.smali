.class public abstract Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;
.super Lde/schildbach/wallet/ui/DialogBuilder;
.source "ReportIssueDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private viewCollectApplicationLog:Landroid/widget/CheckBox;

.field private viewCollectDeviceInfo:Landroid/widget/CheckBox;

.field private viewCollectInstalledPackages:Landroid/widget/CheckBox;

.field private viewCollectWalletDump:Landroid/widget/CheckBox;

.field private viewDescription:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleResId"    # I
    .param p3, "messageResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p1, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->context:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030025

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f06004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 77
    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewDescription:Landroid/widget/EditText;

    .line 79
    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectDeviceInfo:Landroid/widget/CheckBox;

    .line 80
    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectInstalledPackages:Landroid/widget/CheckBox;

    .line 81
    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectApplicationLog:Landroid/widget/CheckBox;

    .line 82
    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectWalletDump:Landroid/widget/CheckBox;

    .line 84
    invoke-virtual {p0, p2}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 85
    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 86
    const v2, 0x7f0b00d4

    invoke-virtual {p0, v2, p0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    const v2, 0x7f0b00ed

    invoke-virtual {p0, v2, v3}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    return-void
.end method

.method private startSend(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "subject"    # Ljava/lang/CharSequence;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 241
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "message/rfc822"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :goto_0
    const-string v2, "android.intent.extra.EMAIL"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "Jommy@pandacoin.tech"

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    if-eqz p1, :cond_0

    .line 261
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 262
    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 266
    :try_start_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->context:Landroid/content/Context;

    iget-object v3, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->context:Landroid/content/Context;

    const v4, 0x7f0b00d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    sget-object v2, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->log:Lorg/slf4j/Logger;

    const-string v3, "invoked chooser for sending issue report"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_1
    return-void

    .line 246
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 254
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 271
    .local v1, "x":Ljava/lang/Exception;
    iget-object v2, p0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->context:Landroid/content/Context;

    const v3, 0x7f0b00da

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 272
    sget-object v2, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->log:Lorg/slf4j/Logger;

    const-string v3, "report issue failed"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract collectApplicationInfo()Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected abstract collectDeviceInfo()Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected abstract collectStackTrace()Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected abstract collectWalletDump()Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 24
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v17, "text":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    .line 97
    .local v6, "cacheDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewDescription:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :try_start_0
    const-string v21, "\n\n\n=== application info ===\n\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->collectApplicationInfo()Ljava/lang/CharSequence;

    move-result-object v3

    .line 105
    .local v3, "applicationInfo":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v3    # "applicationInfo":Ljava/lang/CharSequence;
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->collectStackTrace()Ljava/lang/CharSequence;

    move-result-object v16

    .line 116
    .local v16, "stackTrace":Ljava/lang/CharSequence;
    if-eqz v16, :cond_0

    .line 118
    const-string v21, "\n\n\n=== stack trace ===\n\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .end local v16    # "stackTrace":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectDeviceInfo:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 132
    :try_start_2
    const-string v21, "\n\n\n=== device info ===\n\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->collectDeviceInfo()Ljava/lang/CharSequence;

    move-result-object v7

    .line 136
    .local v7, "deviceInfo":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    .end local v7    # "deviceInfo":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectInstalledPackages:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 148
    :try_start_3
    const-string v21, "\n\n\n=== installed packages ===\n\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/CrashReporter;->appendInstalledPackages(Ljava/lang/Appendable;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectApplicationLog:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 161
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "log"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    .line 163
    .local v12, "logDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .local v4, "arr$":[Ljava/io/File;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v11, :cond_5

    aget-object v13, v4, v9

    .line 165
    .local v13, "logFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, "logFileName":Ljava/lang/String;
    const-string v21, ".log.gz"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 168
    const/16 v21, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x6

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const-string v22, ".log.gz"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 174
    .local v8, "file":Ljava/io/File;
    :goto_5
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 175
    .local v10, "is":Ljava/io/InputStream;
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 177
    .local v15, "os":Ljava/io/OutputStream;
    invoke-static {v10, v15}, Lde/schildbach/wallet/util/Io;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 179
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 180
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 182
    const/16 v21, 0x1ff

    move/from16 v0, v21

    invoke-static {v8, v0}, Lde/schildbach/wallet/util/Io;->chmod(Ljava/io/File;I)V

    .line 184
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 163
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v15    # "os":Ljava/io/OutputStream;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 107
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "logDir":Ljava/io/File;
    .end local v13    # "logFile":Ljava/io/File;
    .end local v14    # "logFileName":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 109
    .local v20, "x":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 122
    .end local v20    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v20

    .line 124
    .restart local v20    # "x":Ljava/io/IOException;
    const-string v21, "\n\n\n=== stack trace ===\n\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 138
    .end local v20    # "x":Ljava/io/IOException;
    :catch_2
    move-exception v20

    .line 140
    .restart local v20    # "x":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 151
    .end local v20    # "x":Ljava/io/IOException;
    :catch_3
    move-exception v20

    .line 153
    .restart local v20    # "x":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 169
    .end local v20    # "x":Ljava/io/IOException;
    .restart local v4    # "arr$":[Ljava/io/File;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "logDir":Ljava/io/File;
    .restart local v13    # "logFile":Ljava/io/File;
    .restart local v14    # "logFileName":Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v21, ".log"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 170
    const/16 v21, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const-string v22, ".log"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v8

    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_5

    .line 187
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "logDir":Ljava/io/File;
    .end local v13    # "logFile":Ljava/io/File;
    .end local v14    # "logFileName":Ljava/lang/String;
    :catch_4
    move-exception v20

    .line 189
    .restart local v20    # "x":Ljava/io/IOException;
    sget-object v21, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->log:Lorg/slf4j/Logger;

    const-string v22, "problem writing attachment"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v20    # "x":Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->viewCollectWalletDump:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 197
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->collectWalletDump()Ljava/lang/CharSequence;

    move-result-object v18

    .line 199
    .local v18, "walletDump":Ljava/lang/CharSequence;
    if-eqz v18, :cond_6

    .line 201
    const-string v21, "wallet-dump."

    const-string v22, ".txt"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 203
    .restart local v8    # "file":Ljava/io/File;
    new-instance v19, Ljava/io/OutputStreamWriter;

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v22, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 204
    .local v19, "writer":Ljava/io/Writer;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->close()V

    .line 207
    const/16 v21, 0x1ff

    move/from16 v0, v21

    invoke-static {v8, v0}, Lde/schildbach/wallet/util/Io;->chmod(Ljava/io/File;I)V

    .line 209
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 218
    .end local v8    # "file":Ljava/io/File;
    .end local v18    # "walletDump":Ljava/lang/CharSequence;
    .end local v19    # "writer":Ljava/io/Writer;
    :cond_6
    :goto_6
    invoke-static {}, Lde/schildbach/wallet/util/CrashReporter;->hasSavedBackgroundTraces()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 220
    const-string v21, "\n\n\n=== saved exceptions ===\n\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :try_start_7
    invoke-static/range {v17 .. v17}, Lde/schildbach/wallet/util/CrashReporter;->appendSavedBackgroundTraces(Ljava/lang/Appendable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 232
    :cond_7
    :goto_7
    const-string v21, "\n\nPUT ADDITIONAL COMMENTS TO THE TOP. DOWN HERE NOBODY WILL NOTICE."

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->subject()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v5}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->startSend(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 235
    return-void

    .line 212
    :catch_5
    move-exception v20

    .line 214
    .restart local v20    # "x":Ljava/io/IOException;
    sget-object v21, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->log:Lorg/slf4j/Logger;

    const-string v22, "problem writing attachment"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 226
    .end local v20    # "x":Ljava/io/IOException;
    :catch_6
    move-exception v20

    .line 228
    .restart local v20    # "x":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method protected abstract subject()Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method
