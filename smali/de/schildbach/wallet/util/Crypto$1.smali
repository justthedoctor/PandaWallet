.class final Lde/schildbach/wallet/util/Crypto$1;
.super Ljava/lang/Object;
.source "Crypto.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/util/Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final buf:[C


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-static {}, Lde/schildbach/wallet/util/Crypto;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lde/schildbach/wallet/util/Crypto$1;->buf:[C

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 286
    const/4 v0, 0x0

    .line 289
    .local v0, "in":Ljava/io/Reader;
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v0    # "in":Ljava/io/Reader;
    .local v1, "in":Ljava/io/Reader;
    :try_start_1
    iget-object v5, p0, Lde/schildbach/wallet/util/Crypto$1;->buf:[C

    invoke-virtual {v1, v5}, Ljava/io/Reader;->read([C)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 303
    if-eqz v1, :cond_0

    .line 307
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v0, v1

    .line 311
    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "in":Ljava/io/Reader;
    :cond_1
    :goto_1
    return v4

    .line 292
    .end local v0    # "in":Ljava/io/Reader;
    .restart local v1    # "in":Ljava/io/Reader;
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lde/schildbach/wallet/util/Crypto$1;->buf:[C

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    .line 293
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lde/schildbach/wallet/util/Crypto;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_4

    .line 303
    if-eqz v1, :cond_3

    .line 307
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    move-object v0, v1

    .line 311
    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "in":Ljava/io/Reader;
    goto :goto_1

    .line 295
    .end local v0    # "in":Ljava/io/Reader;
    .restart local v1    # "in":Ljava/io/Reader;
    :cond_4
    const/4 v4, 0x1

    .line 303
    if-eqz v1, :cond_5

    .line 307
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_3
    move-object v0, v1

    .line 311
    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "in":Ljava/io/Reader;
    goto :goto_1

    .line 297
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 303
    .local v3, "x":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_1

    .line 307
    :try_start_6
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 309
    :catch_1
    move-exception v5

    goto :goto_1

    .line 303
    .end local v3    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v0, :cond_6

    .line 307
    :try_start_7
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 311
    :cond_6
    :goto_6
    throw v4

    .line 309
    .end local v0    # "in":Ljava/io/Reader;
    .restart local v1    # "in":Ljava/io/Reader;
    :catch_2
    move-exception v5

    goto :goto_0

    .restart local v2    # "str":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_3

    .end local v1    # "in":Ljava/io/Reader;
    .end local v2    # "str":Ljava/lang/String;
    .restart local v0    # "in":Ljava/io/Reader;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 303
    .end local v0    # "in":Ljava/io/Reader;
    .restart local v1    # "in":Ljava/io/Reader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "in":Ljava/io/Reader;
    goto :goto_5

    .line 297
    .end local v0    # "in":Ljava/io/Reader;
    .restart local v1    # "in":Ljava/io/Reader;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "in":Ljava/io/Reader;
    goto :goto_4
.end method
