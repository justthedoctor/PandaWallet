.class public Lde/schildbach/wallet/util/Iso8601Format;
.super Ljava/text/SimpleDateFormat;
.source "Iso8601Format.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Iso8601Format;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lde/schildbach/wallet/util/Iso8601Format;->UTC:Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/util/Iso8601Format;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    return-void
.end method

.method public static formatDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-static {}, Lde/schildbach/wallet/util/Iso8601Format;->newDateTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTimeT(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-static {}, Lde/schildbach/wallet/util/Iso8601Format;->newDateTimeFormatT()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newDateFormat()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lde/schildbach/wallet/util/Iso8601Format;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Lde/schildbach/wallet/util/Iso8601Format;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newDateTimeFormat()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lde/schildbach/wallet/util/Iso8601Format;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Lde/schildbach/wallet/util/Iso8601Format;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newDateTimeFormatT()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lde/schildbach/wallet/util/Iso8601Format;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Lde/schildbach/wallet/util/Iso8601Format;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newTimeFormat()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lde/schildbach/wallet/util/Iso8601Format;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Lde/schildbach/wallet/util/Iso8601Format;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lde/schildbach/wallet/util/Iso8601Format;->newDateTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateTimeT(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lde/schildbach/wallet/util/Iso8601Format;->newDateTimeFormatT()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
