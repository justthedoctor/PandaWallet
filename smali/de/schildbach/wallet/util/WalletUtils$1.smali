.class final Lde/schildbach/wallet/util/WalletUtils$1;
.super Ljava/lang/Object;
.source "WalletUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/util/WalletUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 273
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v1}, Lde/schildbach/wallet/util/WalletUtils;->readKeys(Ljava/io/BufferedReader;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    const/4 v3, 0x1

    .line 284
    if-eqz v1, :cond_0

    .line 288
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v0, v1

    .line 293
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return v3

    .line 278
    :catch_0
    move-exception v2

    .line 280
    .local v2, "x":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 284
    if-eqz v0, :cond_1

    .line 288
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 290
    :catch_1
    move-exception v4

    goto :goto_1

    .line 284
    .end local v2    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v0, :cond_2

    .line 288
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 293
    :cond_2
    :goto_4
    throw v3

    .line 290
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 284
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 278
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
