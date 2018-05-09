.class public Lde/schildbach/wallet/util/Io;
.super Ljava/lang/Object;
.source "Io.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lde/schildbach/wallet/util/Io;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Io;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chmod(Ljava/io/File;I)V
    .locals 7
    .param p0, "path"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "mode"    # I

    .prologue
    .line 70
    :try_start_0
    const-string v3, "android.os.FileUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "fileUtils":Ljava/lang/Class;
    const-string v3, "setPermissions"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72
    .local v1, "setPermissions":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "fileUtils":Ljava/lang/Class;
    .end local v1    # "setPermissions":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    .line 76
    .local v2, "x":Ljava/lang/Exception;
    sget-object v3, Lde/schildbach/wallet/util/Io;->log:Lorg/slf4j/Logger;

    const-string v4, "problem using undocumented chmod api"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "os"    # Ljava/io/OutputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 55
    .local v0, "buffer":[B
    const-wide/16 v1, 0x0

    .line 56
    .local v1, "count":J
    const/4 v3, 0x0

    .line 57
    .local v3, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 59
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 62
    :cond_0
    return-wide v1
.end method

.method public static final copy(Ljava/io/Reader;Ljava/lang/StringBuilder;)J
    .locals 6
    .param p0, "reader"    # Ljava/io/Reader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "builder"    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const/16 v4, 0x100

    new-array v0, v4, [C

    .line 42
    .local v0, "buffer":[C
    const-wide/16 v1, 0x0

    .line 43
    .local v1, "count":J
    const/4 v3, 0x0

    .line 44
    .local v3, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 46
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 47
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 49
    :cond_0
    return-wide v1
.end method
