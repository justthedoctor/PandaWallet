.class public Lcom/subgraph/orchid/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field private static final REVISION_FILE_PATH:Ljava/lang/String; = "/build-revision"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildRevision()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12
    invoke-static {}, Lcom/subgraph/orchid/Revision;->tryResourceOpen()Ljava/io/InputStream;

    move-result-object v1

    .line 13
    .local v1, "input":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 14
    const-string v2, ""

    .line 19
    :goto_0
    return-object v2

    .line 17
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/subgraph/orchid/Revision;->readFirstLine(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/io/IOException;
    const-string v2, ""

    goto :goto_0
.end method

.method private static readFirstLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 30
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    .end local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private static tryResourceOpen()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcom/subgraph/orchid/Revision;

    const-string v1, "/build-revision"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
