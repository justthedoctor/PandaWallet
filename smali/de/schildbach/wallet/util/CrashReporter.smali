.class public Lde/schildbach/wallet/util/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/util/CrashReporter$ExceptionHandler;
    }
.end annotation


# static fields
.field private static final BACKGROUND_TRACES_FILENAME:Ljava/lang/String; = "background.trace"

.field private static final CRASH_TRACE_FILENAME:Ljava/lang/String; = "crash.trace"

.field private static final TIME_CREATE_APPLICATION:J

.field private static backgroundTracesFile:Ljava/io/File;

.field private static crashTraceFile:Ljava/io/File;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lde/schildbach/wallet/util/CrashReporter;->TIME_CREATE_APPLICATION:J

    .line 67
    const-class v0, Lde/schildbach/wallet/util/CrashReporter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/CrashReporter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lde/schildbach/wallet/util/CrashReporter;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lde/schildbach/wallet/util/CrashReporter;->crashTraceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/PrintWriter;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-static {p0, p1}, Lde/schildbach/wallet/util/CrashReporter;->appendTrace(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static appendApplicationInfo(Ljava/lang/Appendable;Lde/schildbach/wallet/WalletApplication;)V
    .locals 27
    .param p0, "report"    # Ljava/lang/Appendable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "application"    # Lde/schildbach/wallet/WalletApplication;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual/range {p1 .. p1}, Lde/schildbach/wallet/WalletApplication;->packageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 198
    .local v16, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 200
    .local v10, "now":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Version: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 201
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 202
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Test/Prod: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v21, Lde/schildbach/wallet/Constants;->TEST:Z

    if-eqz v21, :cond_2

    const-string v21, "test"

    :goto_0
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 203
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%tF %tT %tz"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 204
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Time of launch: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%tF %tT %tz"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sget-wide v25, Lde/schildbach/wallet/util/CrashReporter;->TIME_CREATE_APPLICATION:J

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-wide v25, Lde/schildbach/wallet/util/CrashReporter;->TIME_CREATE_APPLICATION:J

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    sget-wide v25, Lde/schildbach/wallet/util/CrashReporter;->TIME_CREATE_APPLICATION:J

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 206
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Time of last update: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%tF %tT %tz"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 207
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Time of first install: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%tF %tT %tz"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 208
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Network: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {v22 .. v22}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 209
    invoke-virtual/range {p1 .. p1}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v20

    .line 210
    .local v20, "wallet":Lcom/google/bitcoin/core/Wallet;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Keychain size: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/Wallet;->getKeychainSize()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 212
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/google/bitcoin/core/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v17

    .line 213
    .local v17, "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    const/4 v12, 0x0

    .line 214
    .local v12, "numInputs":I
    const/4 v13, 0x0

    .line 215
    .local v13, "numOutputs":I
    const/4 v14, 0x0

    .line 216
    .local v14, "numSpentOutputs":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/bitcoin/core/Transaction;

    .line 218
    .local v18, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    add-int v12, v12, v21

    .line 219
    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v15

    .line 220
    .local v15, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/TransactionOutput;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    add-int v13, v13, v21

    .line 221
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/bitcoin/core/TransactionOutput;

    .line 223
    .local v19, "txout":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v21

    if-nez v21, :cond_1

    .line 224
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 202
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "numInputs":I
    .end local v13    # "numOutputs":I
    .end local v14    # "numSpentOutputs":I
    .end local v15    # "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/TransactionOutput;>;"
    .end local v17    # "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v18    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v19    # "txout":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v20    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :cond_2
    const-string v21, "prod"

    goto/16 :goto_0

    .line 227
    .restart local v12    # "numInputs":I
    .restart local v13    # "numOutputs":I
    .restart local v14    # "numSpentOutputs":I
    .restart local v17    # "transactions":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    .restart local v20    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Transactions: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 228
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Inputs: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 229
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Outputs: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " (spent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 230
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Last block seen: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 232
    const-string v21, "Databases:"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 233
    invoke-virtual/range {p1 .. p1}, Lde/schildbach/wallet/WalletApplication;->databaseList()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v4, v3, v6

    .line 234
    .local v4, "db":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 233
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 235
    .end local v4    # "db":Ljava/lang/String;
    :cond_4
    const-string v21, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 237
    invoke-virtual/range {p1 .. p1}, Lde/schildbach/wallet/WalletApplication;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 238
    .local v5, "filesDir":Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\nContents of FilesDir "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 239
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v5, v1}, Lde/schildbach/wallet/util/CrashReporter;->appendDir(Ljava/lang/Appendable;Ljava/io/File;I)V

    .line 240
    const-string v21, "log"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/WalletApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 241
    .local v9, "logDir":Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\nContents of LogDir "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 242
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v9, v1}, Lde/schildbach/wallet/util/CrashReporter;->appendDir(Ljava/lang/Appendable;Ljava/io/File;I)V

    .line 243
    return-void
.end method

.method public static appendDeviceInfo(Ljava/lang/Appendable;Landroid/content/Context;)V
    .locals 6
    .param p0, "report"    # Ljava/lang/Appendable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 139
    .local v1, "config":Landroid/content/res/Configuration;
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 141
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Board: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finger Print: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Product: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Landroid/os/Build;->TIME:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen Layout: size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Metrics: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory Class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lde/schildbach/wallet/util/CrashReporter;->largeMemoryClass(Landroid/app/ActivityManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 162
    return-void

    .line 160
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private static appendDir(Ljava/lang/Appendable;Ljava/io/File;I)V
    .locals 11
    .param p0, "report"    # Ljava/lang/Appendable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 248
    const-string v6, "  - "

    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 251
    .local v2, "formatter":Ljava/util/Formatter;
    const-string v6, "%tF %tT %8d  %s\n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 252
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 255
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 256
    .local v1, "f":Ljava/io/File;
    add-int/lit8 v6, p2, 0x1

    invoke-static {p0, v1, v6}, Lde/schildbach/wallet/util/CrashReporter;->appendDir(Ljava/lang/Appendable;Ljava/io/File;I)V

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 257
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-void
.end method

.method public static appendInstalledPackages(Ljava/lang/Appendable;Landroid/content/Context;)V
    .locals 10
    .param p0, "report"    # Ljava/lang/Appendable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 179
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v4, Lde/schildbach/wallet/util/CrashReporter$1;

    invoke-direct {v4}, Lde/schildbach/wallet/util/CrashReporter$1;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 192
    .local v2, "p":Landroid/content/pm/PackageInfo;
    const-string v4, "%s %s (%d) - %tF %tF\n"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-wide v7, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-wide v7, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 193
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method

.method public static appendSavedBackgroundTraces(Ljava/lang/Appendable;)V
    .locals 5
    .param p0, "report"    # Ljava/lang/Appendable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 88
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lde/schildbach/wallet/util/CrashReporter;->backgroundTracesFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v1, p0}, Lde/schildbach/wallet/util/CrashReporter;->copy(Ljava/io/BufferedReader;Ljava/lang/Appendable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_0
    sget-object v2, Lde/schildbach/wallet/util/CrashReporter;->backgroundTracesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 98
    return-void

    .line 93
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_1
    sget-object v3, Lde/schildbach/wallet/util/CrashReporter;->backgroundTracesFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v2

    .line 93
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public static appendSavedCrashTrace(Ljava/lang/Appendable;)V
    .locals 5
    .param p0, "report"    # Ljava/lang/Appendable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 111
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lde/schildbach/wallet/util/CrashReporter;->crashTraceFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v1, p0}, Lde/schildbach/wallet/util/CrashReporter;->copy(Ljava/io/BufferedReader;Ljava/lang/Appendable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 119
    :cond_0
    sget-object v2, Lde/schildbach/wallet/util/CrashReporter;->crashTraceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 121
    return-void

    .line 116
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 119
    :cond_1
    sget-object v3, Lde/schildbach/wallet/util/CrashReporter;->crashTraceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v2

    .line 116
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private static appendTrace(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 292
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 294
    const-string v1, "\nCause:\n"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method private static copy(Ljava/io/BufferedReader;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "in"    # Ljava/io/BufferedReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "out"    # Ljava/lang/Appendable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 133
    return-void

    .line 131
    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static hasSavedBackgroundTraces()Z
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lde/schildbach/wallet/util/CrashReporter;->backgroundTracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static hasSavedCrashTrace()Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lde/schildbach/wallet/util/CrashReporter;->crashTraceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static init(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    const-string v1, "background.trace"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lde/schildbach/wallet/util/CrashReporter;->backgroundTracesFile:Ljava/io/File;

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "crash.trace"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lde/schildbach/wallet/util/CrashReporter;->crashTraceFile:Ljava/io/File;

    .line 74
    new-instance v0, Lde/schildbach/wallet/util/CrashReporter$ExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/schildbach/wallet/util/CrashReporter$ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 75
    return-void
.end method

.method private static largeMemoryClass(Landroid/app/ActivityManager;)I
    .locals 4
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 168
    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "getLargeMemoryClass"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "x":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static saveBackgroundTrace(Ljava/lang/Throwable;Landroid/content/pm/PackageInfo;)V
    .locals 10
    .param p0, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 261
    sget-object v6, Lde/schildbach/wallet/util/CrashReporter;->backgroundTracesFile:Ljava/io/File;

    monitor-enter v6

    .line 263
    const/4 v2, 0x0

    .line 267
    .local v2, "writer":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    sget-object v8, Lde/schildbach/wallet/util/CrashReporter;->backgroundTracesFile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v8, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    .end local v2    # "writer":Ljava/io/PrintWriter;
    .local v3, "writer":Ljava/io/PrintWriter;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 270
    .local v0, "now":J
    const-string v5, "\n--- collected at %tF %tT %tz on version %s (%d)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget v9, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    invoke-static {v3, p0}, Lde/schildbach/wallet/util/CrashReporter;->appendTrace(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 280
    if-eqz v3, :cond_2

    .line 281
    :try_start_2
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 283
    .end local v0    # "now":J
    .end local v3    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    return-void

    .line 274
    :catch_0
    move-exception v4

    .line 276
    .local v4, "x":Ljava/io/IOException;
    :goto_1
    :try_start_4
    sget-object v5, Lde/schildbach/wallet/util/CrashReporter;->log:Lorg/slf4j/Logger;

    const-string v7, "problem writing background trace"

    invoke-interface {v5, v7, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    if-eqz v2, :cond_0

    .line 281
    :try_start_5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 283
    .end local v4    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 280
    :catchall_1
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 281
    :try_start_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 283
    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v0    # "now":J
    .restart local v3    # "writer":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    goto :goto_2

    .line 280
    .end local v0    # "now":J
    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v3    # "writer":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v5

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    goto :goto_3

    .line 274
    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v3    # "writer":Ljava/io/PrintWriter;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    goto :goto_1

    .end local v2    # "writer":Ljava/io/PrintWriter;
    .restart local v0    # "now":J
    .restart local v3    # "writer":Ljava/io/PrintWriter;
    :cond_2
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/PrintWriter;
    .restart local v2    # "writer":Ljava/io/PrintWriter;
    goto :goto_0
.end method
