.class public abstract Lch/qos/logback/core/net/SMTPAppenderBase;
.super Lch/qos/logback/core/AppenderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase",
        "<TE;>;"
    }
.end annotation


# static fields
.field static EMPTY_IA_ARRAY:[Ljavax/mail/internet/InternetAddress; = null

.field static final MAX_DELAY_BETWEEN_STATUS_MESSAGES:I = 0x493e0000


# instance fields
.field asynchronousSending:Z

.field protected cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/CyclicBufferTracker",
            "<TE;>;"
        }
    .end annotation
.end field

.field private charsetEncoding:Ljava/lang/String;

.field delayBetweenStatusMessages:I

.field protected discriminator:Lch/qos/logback/core/sift/Discriminator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/sift/Discriminator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private errorCount:I

.field protected eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field lastTrackerStatusPrint:J

.field protected layout:Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Layout",
            "<TE;>;"
        }
    .end annotation
.end field

.field localhost:Ljava/lang/String;

.field protected mimeMsg:Ljavax/mail/internet/MimeMessage;

.field password:Ljava/lang/String;

.field private smtpHost:Ljava/lang/String;

.field private smtpPort:I

.field private ssl:Z

.field private starttls:Z

.field protected subjectLayout:Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Layout",
            "<TE;>;"
        }
    .end annotation
.end field

.field private subjectStr:Ljava/lang/String;

.field private toPatternLayoutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/pattern/PatternLayoutBase",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    sput-object v0, Lch/qos/logback/core/net/SMTPAppenderBase;->EMPTY_IA_ARRAY:[Ljavax/mail/internet/InternetAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->lastTrackerStatusPrint:J

    const v0, 0x493e0

    iput v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    const/16 v0, 0x19

    iput v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    iput-boolean v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->starttls:Z

    iput-boolean v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->ssl:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    new-instance v0, Lch/qos/logback/core/sift/DefaultDiscriminator;

    invoke-direct {v0}, Lch/qos/logback/core/sift/DefaultDiscriminator;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    iput v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->errorCount:I

    return-void
.end method

.method private buildSessionFromProperties()Ljavax/mail/Session;
    .locals 5

    new-instance v1, Ljava/util/Properties;

    invoke-static {}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "mail.smtp.host"

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpHost:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "mail.smtp.port"

    iget v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->localhost:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "mail.smtp.localhost"

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->localhost:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v0, Lch/qos/logback/core/net/LoginAuthenticator;

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    iget-object v3, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->password:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lch/qos/logback/core/net/LoginAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mail.smtp.auth"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSTARTTLS()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Both SSL and StartTLS cannot be enabled simultaneously"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {v1, v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSTARTTLS()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "mail.smtp.starttls.enable"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "javax.net.ssl.SSLSocketFactory"

    const-string v3, "mail.smtp.socketFactory.port"

    iget v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mail.smtp.socketFactory.class"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mail.smtp.socketFactory.fallback"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseAddress(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/List",
            "<",
            "Ljavax/mail/internet/InternetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/pattern/PatternLayoutBase;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/pattern/PatternLayoutBase;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    invoke-static {v0, v4}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse email address for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public addTo(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null or empty <to> property"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->makeNewToPatternLayout(Ljava/lang/String;)Lch/qos/logback/core/pattern/PatternLayoutBase;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/PatternLayoutBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->start()V

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected append(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    invoke-interface {v0, p1}, Lch/qos/logback/core/sift/Discriminator;->getDiscriminatingValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v0, v1, v2, v3}, Lch/qos/logback/core/spi/CyclicBufferTracker;->getOrCreate(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-virtual {p0, v0, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->subAppend(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V

    :try_start_0
    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v4, p1}, Lch/qos/logback/core/boolex/EventEvaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lch/qos/logback/core/helpers/CyclicBuffer;

    invoke-direct {v4, v0}, Lch/qos/logback/core/helpers/CyclicBuffer;-><init>(Lch/qos/logback/core/helpers/CyclicBuffer;)V

    invoke-virtual {v0}, Lch/qos/logback/core/helpers/CyclicBuffer;->clear()V

    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    if-eqz v0, :cond_4

    new-instance v0, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;

    invoke-direct {v0, p0, v4, p1}, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;-><init>(Lch/qos/logback/core/net/SMTPAppenderBase;Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V

    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v4}, Lch/qos/logback/core/Context;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lch/qos/logback/core/boolex/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->eventMarksEndOfLife(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/CyclicBufferTracker;->endOfLife(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v0, v2, v3}, Lch/qos/logback/core/spi/CyclicBufferTracker;->removeStaleComponents(J)V

    iget-wide v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->lastTrackerStatusPrint:J

    iget v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMTPAppender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is tracking ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-virtual {v1}, Lch/qos/logback/core/spi/CyclicBufferTracker;->getComponentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] buffers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addInfo(Ljava/lang/String;)V

    iput-wide v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->lastTrackerStatusPrint:J

    iget v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:I

    const/high16 v1, 0x493e0000

    if-ge v0, v1, :cond_0

    iget v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->delayBetweenStatusMessages:I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0, v4, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->sendBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    :try_end_1
    .catch Lch/qos/logback/core/boolex/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->errorCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->errorCount:I

    iget v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->errorCount:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    const-string v4, "SMTPAppender\'s EventEvaluator threw an Exception-"

    invoke-virtual {p0, v4, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public checkEntryConditions()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->started:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to append to a non-started appender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    if-nez v1, :cond_1

    const-string v1, "Message object not configured."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No EventEvaluator is set for appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No layout set for appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. For more information, please visit http://logback.qos.ch/codes.html#smtp_no_layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract eventMarksEndOfLife(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method protected abstract fillBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/StringBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer",
            "<TE;>;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation
.end method

.method getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
    .locals 3

    :try_start_0
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharsetEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getCyclicBufferTracker()Lch/qos/logback/core/spi/CyclicBufferTracker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/spi/CyclicBufferTracker",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    return-object v0
.end method

.method public getDiscriminator()Lch/qos/logback/core/sift/Discriminator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/sift/Discriminator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lch/qos/logback/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Layout",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    return-object v0
.end method

.method public getLocalhost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->localhost:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljavax/mail/Message;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPHost()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->getSmtpHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMTPPort()I
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->getSmtpPort()I

    move-result v0

    return v0
.end method

.method public getSmtpHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSmtpPort()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    return-object v0
.end method

.method public getToAsListOfString()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/pattern/PatternLayoutBase;

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/PatternLayoutBase;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/pattern/PatternLayoutBase",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->toPatternLayoutList:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isAsynchronousSending()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    return v0
.end method

.method public isSSL()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->ssl:Z

    return v0
.end method

.method public isSTARTTLS()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->starttls:Z

    return v0
.end method

.method protected abstract makeNewToPatternLayout(Ljava/lang/String;)Lch/qos/logback/core/pattern/PatternLayoutBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/pattern/PatternLayoutBase",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract makeSubjectLayout(Ljava/lang/String;)Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Layout",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected sendBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer",
            "<TE;>;TE;)V"
        }
    .end annotation

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v3}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v0}, Lch/qos/logback/core/Layout;->getFileHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v0}, Lch/qos/logback/core/Layout;->getPresentationHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, p1, v4}, Lch/qos/logback/core/net/SMTPAppenderBase;->fillBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/StringBuffer;)V

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v0}, Lch/qos/logback/core/Layout;->getPresentationFooter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v0}, Lch/qos/logback/core/Layout;->getFileFooter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v0, "Undefined subject"

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectLayout:Lch/qos/logback/core/Layout;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectLayout:Lch/qos/logback/core/Layout;

    invoke-interface {v0, p2}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :goto_0
    if-le v1, v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lch/qos/logback/core/net/SMTPAppenderBase;->parseAddress(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "Empty destination address. Aborting email transmission"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addInfo(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    sget-object v2, Lch/qos/logback/core/net/SMTPAppenderBase;->EMPTY_IA_ARRAY:[Ljavax/mail/internet/InternetAddress;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    sget-object v5, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v2, v5, v0}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v2}, Lch/qos/logback/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/qos/logback/core/util/ContentTypeUtil;->isTextual(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    invoke-static {v2}, Lch/qos/logback/core/util/ContentTypeUtil;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v2, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    iget-object v3, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v3, v2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to send out SMTP message \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    invoke-static {v0}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Error occurred while sending e-mail notification."

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v4}, Lch/qos/logback/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public setAsynchronousSending(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->asynchronousSending:Z

    return-void
.end method

.method public setCharsetEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->charsetEncoding:Ljava/lang/String;

    return-void
.end method

.method public setCyclicBufferTracker(Lch/qos/logback/core/spi/CyclicBufferTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/spi/CyclicBufferTracker",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    return-void
.end method

.method public setDiscriminator(Lch/qos/logback/core/sift/Discriminator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/sift/Discriminator",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    return-void
.end method

.method public setEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->eventEvaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->from:Ljava/lang/String;

    return-void
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->layout:Lch/qos/logback/core/Layout;

    return-void
.end method

.method public setLocalhost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->localhost:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljavax/mail/internet/MimeMessage;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->password:Ljava/lang/String;

    return-void
.end method

.method public setSMTPHost(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->setSmtpHost(Ljava/lang/String;)V

    return-void
.end method

.method public setSMTPPort(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/SMTPAppenderBase;->setSmtpPort(I)V

    return-void
.end method

.method public setSSL(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->ssl:Z

    return-void
.end method

.method public setSTARTTLS(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->starttls:Z

    return-void
.end method

.method public setSmtpHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpHost:Ljava/lang/String;

    return-void
.end method

.method public setSmtpPort(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->smtpPort:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->username:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    if-nez v0, :cond_0

    new-instance v0, Lch/qos/logback/core/spi/CyclicBufferTracker;

    invoke-direct {v0}, Lch/qos/logback/core/spi/CyclicBufferTracker;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->cbTracker:Lch/qos/logback/core/spi/CyclicBufferTracker;

    :cond_0
    invoke-direct {p0}, Lch/qos/logback/core/net/SMTPAppenderBase;->buildSessionFromProperties()Ljavax/mail/Session;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to obtain javax.mail.Session. Cannot start."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->from:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->from:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/SMTPAppenderBase;->getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    :goto_1
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->makeSubjectLayout(Ljava/lang/String;)Lch/qos/logback/core/Layout;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->subjectLayout:Lch/qos/logback/core/Layout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->started:Z
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not activate SMTPAppender options."

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/SMTPAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->mimeMsg:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->setFrom()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract subAppend(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer",
            "<TE;>;TE;)V"
        }
    .end annotation
.end method
