.class public Lch/qos/logback/classic/util/ContextInitializer;
.super Ljava/lang/Object;


# static fields
.field private static final ASSETS_DIR:Ljava/lang/String;

.field public static final AUTOCONFIG_FILE:Ljava/lang/String; = "logback.xml"

.field public static final CONFIG_FILE_PROPERTY:Ljava/lang/String; = "logback.configurationFile"

.field public static final STATUS_LISTENER_CLASS:Ljava/lang/String; = "logback.statusListenerClass"


# instance fields
.field final classLoader:Ljava/lang/ClassLoader;

.field final loggerContext:Lch/qos/logback/classic/LoggerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lch/qos/logback/core/android/CommonPathUtil;->getAssetsDirectoryPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/util/ContextInitializer;->ASSETS_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-static {p0}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfObject(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private findConfigFileFromSystemProperties(Z)Ljava/net/URL;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "logback.configurationFile"

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_0

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v2, v3, v2}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v2, v3, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v0}, Lch/qos/logback/core/util/Loader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-direct {p0, v2, v3, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v2, v3, v0}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_9

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-direct {p0, v2, v3, v1}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    :cond_9
    throw v0
.end method

.method private findConfigFileURLFromAssets(Z)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lch/qos/logback/classic/util/ContextInitializer;->ASSETS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "logback.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/util/ContextInitializer;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, v1, p1}, Lch/qos/logback/classic/util/ContextInitializer;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getResource(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    move-object v0, p1

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lch/qos/logback/classic/util/ContextInitializer;->statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private statusOnResourceSearch(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    if-nez p3, :cond_0

    new-instance v1, Lch/qos/logback/core/status/InfoStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could NOT find resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v1, v2, v3}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lch/qos/logback/core/status/InfoStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v1, v2, v3}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    goto :goto_0
.end method


# virtual methods
.method public autoConfig()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-static {v0}, Lch/qos/logback/classic/util/StatusListenerConfigHelper;->installIfAsked(Lch/qos/logback/classic/LoggerContext;)V

    const/4 v0, 0x0

    new-instance v2, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v2}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    iget-object v3, p0, Lch/qos/logback/classic/util/ContextInitializer;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/ContextInitializer;->findConfigFileFromSystemProperties(Z)Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/net/URL;)V

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/ContextInitializer;->findConfigFileURLFromAssets(Z)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method
