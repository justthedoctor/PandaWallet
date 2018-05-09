.class final Lcom/google/common/base/CharMatcher$15;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final TABLE:Ljava/lang/String; = "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1361
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1373
    const-string v0, "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"

    const v1, -0x32553521    # -3.5817776E8f

    mul-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 1379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const-string v1, "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1380
    const-string v1, "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 1379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1382
    :cond_0
    return-void
.end method
