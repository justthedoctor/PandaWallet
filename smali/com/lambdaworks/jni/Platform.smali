.class public Lcom/lambdaworks/jni/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lambdaworks/jni/Platform$OS;,
        Lcom/lambdaworks/jni/Platform$Arch;
    }
.end annotation


# instance fields
.field public final arch:Lcom/lambdaworks/jni/Platform$Arch;

.field public final os:Lcom/lambdaworks/jni/Platform$OS;


# direct methods
.method private constructor <init>(Lcom/lambdaworks/jni/Platform$Arch;Lcom/lambdaworks/jni/Platform$OS;)V
    .locals 0
    .param p1, "arch"    # Lcom/lambdaworks/jni/Platform$Arch;
    .param p2, "os"    # Lcom/lambdaworks/jni/Platform$OS;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/lambdaworks/jni/Platform;->arch:Lcom/lambdaworks/jni/Platform$Arch;

    .line 46
    iput-object p2, p0, Lcom/lambdaworks/jni/Platform;->os:Lcom/lambdaworks/jni/Platform$OS;

    .line 47
    return-void
.end method

.method public static detect()Lcom/lambdaworks/jni/Platform;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lambdaworks/jni/UnsupportedPlatformException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v11, "os.arch"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "osArch":Ljava/lang/String;
    const-string v11, "os.name"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "osName":Ljava/lang/String;
    invoke-static {}, Lcom/lambdaworks/jni/Platform$Arch;->values()[Lcom/lambdaworks/jni/Platform$Arch;

    move-result-object v1

    .local v1, "arr$":[Lcom/lambdaworks/jni/Platform$Arch;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v1    # "arr$":[Lcom/lambdaworks/jni/Platform$Arch;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 61
    .local v0, "arch":Lcom/lambdaworks/jni/Platform$Arch;
    iget-object v11, v0, Lcom/lambdaworks/jni/Platform$Arch;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 62
    invoke-static {}, Lcom/lambdaworks/jni/Platform$OS;->values()[Lcom/lambdaworks/jni/Platform$OS;

    move-result-object v2

    .local v2, "arr$":[Lcom/lambdaworks/jni/Platform$OS;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v8, v2, v3

    .line 63
    .local v8, "os":Lcom/lambdaworks/jni/Platform$OS;
    iget-object v11, v8, Lcom/lambdaworks/jni/Platform$OS;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 64
    new-instance v11, Lcom/lambdaworks/jni/Platform;

    invoke-direct {v11, v0, v8}, Lcom/lambdaworks/jni/Platform;-><init>(Lcom/lambdaworks/jni/Platform$Arch;Lcom/lambdaworks/jni/Platform$OS;)V

    return-object v11

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    .end local v2    # "arr$":[Lcom/lambdaworks/jni/Platform$OS;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "os":Lcom/lambdaworks/jni/Platform$OS;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 70
    .end local v0    # "arch":Lcom/lambdaworks/jni/Platform$Arch;
    :cond_2
    const-string v11, "Unsupported platform %s %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "msg":Ljava/lang/String;
    new-instance v11, Lcom/lambdaworks/jni/UnsupportedPlatformException;

    invoke-direct {v11, v7}, Lcom/lambdaworks/jni/UnsupportedPlatformException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
