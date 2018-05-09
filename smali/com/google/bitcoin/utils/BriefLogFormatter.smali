.class public Lcom/google/bitcoin/utils/BriefLogFormatter;
.super Ljava/util/logging/Formatter;
.source "BriefLogFormatter.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;

.field private static final messageFormat:Ljava/text/MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "{3,date,hh:mm:ss} {0} {1}.{2}: {4}\n{5}"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/bitcoin/utils/BriefLogFormatter;->messageFormat:Ljava/text/MessageFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 42
    const-string v0, ""

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/utils/BriefLogFormatter;->logger:Ljava/util/logging/Logger;

    .line 43
    sget-object v0, Lcom/google/bitcoin/utils/BriefLogFormatter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Lcom/google/bitcoin/utils/BriefLogFormatter;

    invoke-direct {v1}, Lcom/google/bitcoin/utils/BriefLogFormatter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 44
    return-void
.end method

.method public static initVerbose()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/google/bitcoin/utils/BriefLogFormatter;->init()V

    .line 48
    sget-object v0, Lcom/google/bitcoin/utils/BriefLogFormatter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 49
    sget-object v0, Lcom/google/bitcoin/utils/BriefLogFormatter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 10
    .param p1, "logRecord"    # Ljava/util/logging/LogRecord;

    .prologue
    const/4 v9, 0x5

    .line 54
    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/Object;

    .line 55
    .local v0, "arguments":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 56
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "fullClassName":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 58
    .local v3, "lastDot":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "className":Ljava/lang/String;
    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 60
    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 61
    const/4 v5, 0x3

    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v0, v5

    .line 62
    const/4 v5, 0x4

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 63
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 64
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 65
    .local v4, "result":Ljava/io/Writer;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v9

    .line 70
    .end local v4    # "result":Ljava/io/Writer;
    :goto_0
    sget-object v5, Lcom/google/bitcoin/utils/BriefLogFormatter;->messageFormat:Ljava/text/MessageFormat;

    invoke-virtual {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 68
    :cond_0
    const-string v5, ""

    aput-object v5, v0, v9

    goto :goto_0
.end method
