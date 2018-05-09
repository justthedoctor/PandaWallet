.class public Lcom/lambdaworks/jni/JarLibraryLoader;
.super Ljava/lang/Object;
.source "JarLibraryLoader.java"

# interfaces
.implements Lcom/lambdaworks/jni/LibraryLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lambdaworks/jni/JarLibraryLoader$1;
    }
.end annotation


# instance fields
.field private final codeSource:Ljava/security/CodeSource;

.field private final libraryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/lambdaworks/jni/JarLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    const-string v1, "lib"

    invoke-direct {p0, v0, v1}, Lcom/lambdaworks/jni/JarLibraryLoader;-><init>(Ljava/security/CodeSource;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/security/CodeSource;Ljava/lang/String;)V
    .locals 0
    .param p1, "codeSource"    # Ljava/security/CodeSource;
    .param p2, "libraryPath"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lambdaworks/jni/JarLibraryLoader;->codeSource:Ljava/security/CodeSource;

    .line 43
    iput-object p2, p0, Lcom/lambdaworks/jni/JarLibraryLoader;->libraryPath:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private static extract(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 96
    .local v0, "buf":[B
    const-string v5, "lib"

    invoke-static {p0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 97
    .local v3, "lib":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 100
    .local v4, "os":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 101
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 105
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 108
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v5

    .line 107
    .restart local v2    # "len":I
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 108
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 111
    return-object v3
.end method

.method private libCandidates(Lcom/lambdaworks/jni/Platform;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "platform"    # Lcom/lambdaworks/jni/Platform;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lambdaworks/jni/Platform;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lambdaworks/jni/JarLibraryLoader;->libraryPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v2, p1, Lcom/lambdaworks/jni/Platform;->arch:Lcom/lambdaworks/jni/Platform$Arch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p1, Lcom/lambdaworks/jni/Platform;->os:Lcom/lambdaworks/jni/Platform$OS;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v2, Lcom/lambdaworks/jni/JarLibraryLoader$1;->$SwitchMap$com$lambdaworks$jni$Platform$OS:[I

    iget-object v3, p1, Lcom/lambdaworks/jni/Platform;->os:Lcom/lambdaworks/jni/Platform$OS;

    invoke-virtual {v3}, Lcom/lambdaworks/jni/Platform$OS;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 143
    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dylib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jnilib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public load(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "verify"    # Z

    .prologue
    .line 55
    const/4 v5, 0x0

    .line 58
    .local v5, "loaded":Z
    :try_start_0
    invoke-static {}, Lcom/lambdaworks/jni/Platform;->detect()Lcom/lambdaworks/jni/Platform;

    move-result-object v7

    .line 59
    .local v7, "platform":Lcom/lambdaworks/jni/Platform;
    new-instance v3, Ljava/util/jar/JarFile;

    iget-object v8, p0, Lcom/lambdaworks/jni/JarLibraryLoader;->codeSource:Ljava/security/CodeSource;

    invoke-virtual {v8}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, p2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v3, "jar":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-direct {p0, v7, p1}, Lcom/lambdaworks/jni/JarLibraryLoader;->libCandidates(Lcom/lambdaworks/jni/Platform;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 62
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 63
    .local v1, "entry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v3, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/lambdaworks/jni/JarLibraryLoader;->extract(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v4

    .line 66
    .local v4, "lib":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const/4 v5, 0x1

    .line 73
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v4    # "lib":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 79
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v7    # "platform":Lcom/lambdaworks/jni/Platform;
    :goto_0
    return v5

    .line 73
    .restart local v3    # "jar":Ljava/util/jar/JarFile;
    .restart local v7    # "platform":Lcom/lambdaworks/jni/Platform;
    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    throw v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    .end local v7    # "platform":Lcom/lambdaworks/jni/Platform;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v5, 0x0

    goto :goto_0
.end method
