.class Lde/schildbach/wallet/util/CrashReporter$ExceptionHandler;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/util/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExceptionHandler"
.end annotation


# instance fields
.field private final previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "previousHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lde/schildbach/wallet/util/CrashReporter$ExceptionHandler;->previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 307
    return-void
.end method

.method private saveCrashTrace(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lde/schildbach/wallet/util/CrashReporter;->access$100()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 327
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-static {v0, p1}, Lde/schildbach/wallet/util/CrashReporter;->access$200(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 328
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 329
    return-void
.end method


# virtual methods
.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lde/schildbach/wallet/util/CrashReporter$ExceptionHandler;->saveCrashTrace(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :goto_0
    :try_start_1
    iget-object v1, p0, Lde/schildbach/wallet/util/CrashReporter$ExceptionHandler;->previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, "x":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lde/schildbach/wallet/util/CrashReporter;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "problem writing crash trace"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 314
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
