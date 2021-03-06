.class public Lorg/spongycastle/crypto/engines/GOST28147Engine;
.super Ljava/lang/Object;
.source "GOST28147Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static DSbox_A:[B

.field private static DSbox_Test:[B

.field private static ESbox_A:[B

.field private static ESbox_B:[B

.field private static ESbox_C:[B

.field private static ESbox_D:[B

.field private static ESbox_Test:[B

.field private static Sbox_Default:[B

.field private static sBoxes:Ljava/util/Hashtable;


# instance fields
.field private S:[B

.field private forEncryption:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 28
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_Test:[B

    .line 55
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_A:[B

    .line 66
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_B:[B

    .line 77
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_C:[B

    .line 88
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_D:[B

    .line 100
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->DSbox_Test:[B

    .line 111
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->DSbox_A:[B

    .line 125
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    .line 129
    const-string v0, "Default"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 130
    const-string v0, "E-TEST"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_Test:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 131
    const-string v0, "E-A"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_A:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 132
    const-string v0, "E-B"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_B:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 133
    const-string v0, "E-C"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_C:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 134
    const-string v0, "E-D"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ESbox_D:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 135
    const-string v0, "D-TEST"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->DSbox_Test:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 136
    const-string v0, "D-A"

    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->DSbox_A:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->addSBox(Ljava/lang/String;[B)V

    .line 137
    return-void

    .line 28
    :array_0
    .array-data 1
        0x4t
        0xat
        0x9t
        0x2t
        0xdt
        0x8t
        0x0t
        0xet
        0x6t
        0xbt
        0x1t
        0xct
        0x7t
        0xft
        0x5t
        0x3t
        0xet
        0xbt
        0x4t
        0xct
        0x6t
        0xdt
        0xft
        0xat
        0x2t
        0x3t
        0x8t
        0x1t
        0x0t
        0x7t
        0x5t
        0x9t
        0x5t
        0x8t
        0x1t
        0xdt
        0xat
        0x3t
        0x4t
        0x2t
        0xet
        0xft
        0xct
        0x7t
        0x6t
        0x0t
        0x9t
        0xbt
        0x7t
        0xdt
        0xat
        0x1t
        0x0t
        0x8t
        0x9t
        0xft
        0xet
        0x4t
        0x6t
        0xct
        0xbt
        0x2t
        0x5t
        0x3t
        0x6t
        0xct
        0x7t
        0x1t
        0x5t
        0xft
        0xdt
        0x8t
        0x4t
        0xat
        0x9t
        0xet
        0x0t
        0x3t
        0xbt
        0x2t
        0x4t
        0xbt
        0xat
        0x0t
        0x7t
        0x2t
        0x1t
        0xdt
        0x3t
        0x6t
        0x8t
        0x5t
        0x9t
        0xct
        0xft
        0xet
        0xdt
        0xbt
        0x4t
        0x1t
        0x3t
        0xft
        0x5t
        0x9t
        0x0t
        0xat
        0xet
        0x7t
        0x6t
        0x8t
        0x2t
        0xct
        0x1t
        0xft
        0xdt
        0x0t
        0x5t
        0x7t
        0xat
        0x4t
        0x9t
        0x2t
        0x3t
        0xet
        0x6t
        0xbt
        0x8t
        0xct
    .end array-data

    .line 44
    :array_1
    .array-data 1
        0x4t
        0x2t
        0xft
        0x5t
        0x9t
        0x1t
        0x0t
        0x8t
        0xet
        0x3t
        0xbt
        0xct
        0xdt
        0x7t
        0xat
        0x6t
        0xct
        0x9t
        0xft
        0xet
        0x8t
        0x1t
        0x3t
        0xat
        0x2t
        0x7t
        0x4t
        0xdt
        0x6t
        0x0t
        0xbt
        0x5t
        0xdt
        0x8t
        0xet
        0xct
        0x7t
        0x3t
        0x9t
        0xat
        0x1t
        0x5t
        0x2t
        0x4t
        0x6t
        0xft
        0x0t
        0xbt
        0xet
        0x9t
        0xbt
        0x2t
        0x5t
        0xft
        0x7t
        0x1t
        0x0t
        0xdt
        0xct
        0x6t
        0xat
        0x4t
        0x3t
        0x8t
        0x3t
        0xet
        0x5t
        0x9t
        0x6t
        0x8t
        0x0t
        0xdt
        0xat
        0xbt
        0x7t
        0xct
        0x2t
        0x1t
        0xft
        0x4t
        0x8t
        0xft
        0x6t
        0xbt
        0x1t
        0x9t
        0xct
        0x5t
        0xdt
        0x3t
        0x7t
        0xat
        0x0t
        0xet
        0x2t
        0x4t
        0x9t
        0xbt
        0xct
        0x0t
        0x3t
        0x6t
        0x7t
        0x5t
        0x4t
        0x8t
        0xet
        0xft
        0x1t
        0xat
        0x2t
        0xdt
        0xct
        0x6t
        0x5t
        0x2t
        0xbt
        0x0t
        0x9t
        0xdt
        0x3t
        0xet
        0x7t
        0xat
        0xft
        0x4t
        0x1t
        0x8t
    .end array-data

    .line 55
    :array_2
    .array-data 1
        0x9t
        0x6t
        0x3t
        0x2t
        0x8t
        0xbt
        0x1t
        0x7t
        0xat
        0x4t
        0xet
        0xft
        0xct
        0x0t
        0xdt
        0x5t
        0x3t
        0x7t
        0xet
        0x9t
        0x8t
        0xat
        0xft
        0x0t
        0x5t
        0x2t
        0x6t
        0xct
        0xbt
        0x4t
        0xdt
        0x1t
        0xet
        0x4t
        0x6t
        0x2t
        0xbt
        0x3t
        0xdt
        0x8t
        0xct
        0xft
        0x5t
        0xat
        0x0t
        0x7t
        0x1t
        0x9t
        0xet
        0x7t
        0xat
        0xct
        0xdt
        0x1t
        0x3t
        0x9t
        0x0t
        0x2t
        0xbt
        0x4t
        0xft
        0x8t
        0x5t
        0x6t
        0xbt
        0x5t
        0x1t
        0x9t
        0x8t
        0xdt
        0xft
        0x0t
        0xet
        0x4t
        0x2t
        0x3t
        0xct
        0x7t
        0xat
        0x6t
        0x3t
        0xat
        0xdt
        0xct
        0x1t
        0x2t
        0x0t
        0xbt
        0x7t
        0x5t
        0x9t
        0x4t
        0x8t
        0xft
        0xet
        0x6t
        0x1t
        0xdt
        0x2t
        0x9t
        0x7t
        0xat
        0x6t
        0x0t
        0x8t
        0xct
        0x4t
        0x5t
        0xft
        0x3t
        0xbt
        0xet
        0xbt
        0xat
        0xft
        0x5t
        0x0t
        0xct
        0xet
        0x8t
        0x6t
        0x2t
        0x3t
        0x9t
        0x1t
        0x7t
        0xdt
        0x4t
    .end array-data

    .line 66
    :array_3
    .array-data 1
        0x8t
        0x4t
        0xbt
        0x1t
        0x3t
        0x5t
        0x0t
        0x9t
        0x2t
        0xet
        0xat
        0xct
        0xdt
        0x6t
        0x7t
        0xft
        0x0t
        0x1t
        0x2t
        0xat
        0x4t
        0xdt
        0x5t
        0xct
        0x9t
        0x7t
        0x3t
        0xft
        0xbt
        0x8t
        0x6t
        0xet
        0xet
        0xct
        0x0t
        0xat
        0x9t
        0x2t
        0xdt
        0xbt
        0x7t
        0x5t
        0x8t
        0xft
        0x3t
        0x6t
        0x1t
        0x4t
        0x7t
        0x5t
        0x0t
        0xdt
        0xbt
        0x6t
        0x1t
        0x2t
        0x3t
        0xat
        0xct
        0xft
        0x4t
        0xet
        0x9t
        0x8t
        0x2t
        0x7t
        0xct
        0xft
        0x9t
        0x5t
        0xat
        0xbt
        0x1t
        0x4t
        0x0t
        0xdt
        0x6t
        0x8t
        0xet
        0x3t
        0x8t
        0x3t
        0x2t
        0x6t
        0x4t
        0xdt
        0xet
        0xbt
        0xct
        0x1t
        0x7t
        0xft
        0xat
        0x0t
        0x9t
        0x5t
        0x5t
        0x2t
        0xat
        0xbt
        0x9t
        0x1t
        0xct
        0x3t
        0x7t
        0x4t
        0xdt
        0x0t
        0x6t
        0xft
        0x8t
        0xet
        0x0t
        0x4t
        0xbt
        0xet
        0x8t
        0x3t
        0x7t
        0x1t
        0xat
        0x2t
        0x9t
        0x6t
        0xft
        0xdt
        0x5t
        0xct
    .end array-data

    .line 77
    :array_4
    .array-data 1
        0x1t
        0xbt
        0xct
        0x2t
        0x9t
        0xdt
        0x0t
        0xft
        0x4t
        0x5t
        0x8t
        0xet
        0xat
        0x7t
        0x6t
        0x3t
        0x0t
        0x1t
        0x7t
        0xdt
        0xbt
        0x4t
        0x5t
        0x2t
        0x8t
        0xet
        0xft
        0xct
        0x9t
        0xat
        0x6t
        0x3t
        0x8t
        0x2t
        0x5t
        0x0t
        0x4t
        0x9t
        0xft
        0xat
        0x3t
        0x7t
        0xct
        0xdt
        0x6t
        0xet
        0x1t
        0xbt
        0x3t
        0x6t
        0x0t
        0x1t
        0x5t
        0xdt
        0xat
        0x8t
        0xbt
        0x2t
        0x9t
        0x7t
        0xet
        0xft
        0xct
        0x4t
        0x8t
        0xdt
        0xbt
        0x0t
        0x4t
        0x5t
        0x1t
        0x2t
        0x9t
        0x3t
        0xct
        0xet
        0x6t
        0xft
        0xat
        0x7t
        0xct
        0x9t
        0xbt
        0x1t
        0x8t
        0xet
        0x2t
        0x4t
        0x7t
        0x3t
        0x6t
        0x5t
        0xat
        0x0t
        0xft
        0xdt
        0xat
        0x9t
        0x6t
        0x8t
        0xdt
        0xet
        0x2t
        0x0t
        0xft
        0x3t
        0x5t
        0xbt
        0x4t
        0x1t
        0xct
        0x7t
        0x7t
        0x4t
        0x0t
        0x5t
        0xat
        0x2t
        0xft
        0xet
        0xct
        0x6t
        0x1t
        0xbt
        0xdt
        0x9t
        0x3t
        0x8t
    .end array-data

    .line 88
    :array_5
    .array-data 1
        0xft
        0xct
        0x2t
        0xat
        0x6t
        0x4t
        0x5t
        0x0t
        0x7t
        0x9t
        0xet
        0xdt
        0x1t
        0xbt
        0x8t
        0x3t
        0xbt
        0x6t
        0x3t
        0x4t
        0xct
        0xft
        0xet
        0x2t
        0x7t
        0xdt
        0x8t
        0x0t
        0x5t
        0xat
        0x9t
        0x1t
        0x1t
        0xct
        0xbt
        0x0t
        0xft
        0xet
        0x6t
        0x5t
        0xat
        0xdt
        0x4t
        0x8t
        0x9t
        0x3t
        0x7t
        0x2t
        0x1t
        0x5t
        0xet
        0xct
        0xat
        0x7t
        0x0t
        0xdt
        0x6t
        0x2t
        0xbt
        0x4t
        0x9t
        0x3t
        0xft
        0x8t
        0x0t
        0xct
        0x8t
        0x9t
        0xdt
        0x2t
        0xat
        0xbt
        0x7t
        0x3t
        0x6t
        0x5t
        0x4t
        0xet
        0xft
        0x1t
        0x8t
        0x0t
        0xft
        0x3t
        0x2t
        0x5t
        0xet
        0xbt
        0x1t
        0xat
        0x4t
        0x7t
        0xct
        0x9t
        0xdt
        0x6t
        0x3t
        0x0t
        0x6t
        0xft
        0x1t
        0xet
        0x9t
        0x2t
        0xdt
        0x8t
        0xct
        0x4t
        0xbt
        0xat
        0x5t
        0x7t
        0x1t
        0xat
        0x6t
        0x8t
        0xft
        0xbt
        0x0t
        0x4t
        0xct
        0x3t
        0x5t
        0x9t
        0x7t
        0xdt
        0x2t
        0xet
    .end array-data

    .line 100
    :array_6
    .array-data 1
        0x4t
        0xat
        0x9t
        0x2t
        0xdt
        0x8t
        0x0t
        0xet
        0x6t
        0xbt
        0x1t
        0xct
        0x7t
        0xft
        0x5t
        0x3t
        0xet
        0xbt
        0x4t
        0xct
        0x6t
        0xdt
        0xft
        0xat
        0x2t
        0x3t
        0x8t
        0x1t
        0x0t
        0x7t
        0x5t
        0x9t
        0x5t
        0x8t
        0x1t
        0xdt
        0xat
        0x3t
        0x4t
        0x2t
        0xet
        0xft
        0xct
        0x7t
        0x6t
        0x0t
        0x9t
        0xbt
        0x7t
        0xdt
        0xat
        0x1t
        0x0t
        0x8t
        0x9t
        0xft
        0xet
        0x4t
        0x6t
        0xct
        0xbt
        0x2t
        0x5t
        0x3t
        0x6t
        0xct
        0x7t
        0x1t
        0x5t
        0xft
        0xdt
        0x8t
        0x4t
        0xat
        0x9t
        0xet
        0x0t
        0x3t
        0xbt
        0x2t
        0x4t
        0xbt
        0xat
        0x0t
        0x7t
        0x2t
        0x1t
        0xdt
        0x3t
        0x6t
        0x8t
        0x5t
        0x9t
        0xct
        0xft
        0xet
        0xdt
        0xbt
        0x4t
        0x1t
        0x3t
        0xft
        0x5t
        0x9t
        0x0t
        0xat
        0xet
        0x7t
        0x6t
        0x8t
        0x2t
        0xct
        0x1t
        0xft
        0xdt
        0x0t
        0x5t
        0x7t
        0xat
        0x4t
        0x9t
        0x2t
        0x3t
        0xet
        0x6t
        0xbt
        0x8t
        0xct
    .end array-data

    .line 111
    :array_7
    .array-data 1
        0xat
        0x4t
        0x5t
        0x6t
        0x8t
        0x1t
        0x3t
        0x7t
        0xdt
        0xct
        0xet
        0x0t
        0x9t
        0x2t
        0xbt
        0xft
        0x5t
        0xft
        0x4t
        0x0t
        0x2t
        0xdt
        0xbt
        0x9t
        0x1t
        0x7t
        0x6t
        0x3t
        0xct
        0xet
        0xat
        0x8t
        0x7t
        0xft
        0xct
        0xet
        0x9t
        0x4t
        0x1t
        0x0t
        0x3t
        0xbt
        0x5t
        0x2t
        0x6t
        0xat
        0x8t
        0xdt
        0x4t
        0xat
        0x7t
        0xct
        0x0t
        0xft
        0x2t
        0x8t
        0xet
        0x1t
        0x6t
        0x5t
        0xdt
        0xbt
        0x9t
        0x3t
        0x7t
        0x6t
        0x4t
        0xbt
        0x9t
        0xct
        0x2t
        0xat
        0x1t
        0x8t
        0x0t
        0xet
        0xft
        0xdt
        0x3t
        0x5t
        0x7t
        0x6t
        0x2t
        0x4t
        0xdt
        0x9t
        0xft
        0x0t
        0xat
        0x1t
        0x5t
        0xbt
        0x8t
        0xet
        0xct
        0x3t
        0xdt
        0xet
        0x4t
        0x1t
        0x7t
        0x0t
        0x5t
        0xat
        0x3t
        0xct
        0x8t
        0xft
        0x6t
        0x2t
        0x9t
        0xbt
        0x1t
        0x3t
        0xat
        0x9t
        0x5t
        0xbt
        0x4t
        0xft
        0x8t
        0x6t
        0x7t
        0xet
        0xdt
        0x0t
        0x2t
        0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    .line 24
    sget-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    .line 149
    return-void
.end method

.method private GOST28147Func([I[BI[BI)V
    .locals 8
    .param p1, "workingKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    .line 283
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v0

    .line 284
    .local v0, "N1":I
    add-int/lit8 v5, p3, 0x4

    invoke-direct {p0, p2, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v1

    .line 286
    .local v1, "N2":I
    iget-boolean v5, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->forEncryption:Z

    if-eqz v5, :cond_2

    .line 288
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 290
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v7, :cond_0

    .line 292
    move v4, v0

    .line 293
    .local v4, "tmp":I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 294
    move v1, v4

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    .end local v4    # "tmp":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "j":I
    :cond_1
    const/4 v2, 0x7

    .restart local v2    # "j":I
    :goto_2
    if-lez v2, :cond_6

    .line 299
    move v4, v0

    .line 300
    .restart local v4    # "tmp":I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 301
    move v1, v4

    .line 297
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 306
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v4    # "tmp":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    if-ge v2, v7, :cond_3

    .line 308
    move v4, v0

    .line 309
    .restart local v4    # "tmp":I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 310
    move v1, v4

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 312
    .end local v4    # "tmp":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_4
    if-ge v3, v6, :cond_6

    .line 314
    const/4 v2, 0x7

    :goto_5
    if-ltz v2, :cond_4

    .line 316
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    if-nez v2, :cond_5

    .line 312
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 320
    :cond_5
    move v4, v0

    .line 321
    .restart local v4    # "tmp":I
    aget v5, p1, v2

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int v0, v1, v5

    .line 322
    move v1, v4

    .line 314
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 327
    .end local v4    # "tmp":I
    :cond_6
    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-direct {p0, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->GOST28147_mainStep(II)I

    move-result v5

    xor-int/2addr v1, v5

    .line 329
    invoke-direct {p0, v0, p4, p5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->intTobytes(I[BI)V

    .line 330
    add-int/lit8 v5, p5, 0x4

    invoke-direct {p0, v1, p4, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->intTobytes(I[BI)V

    .line 331
    return-void
.end method

.method private GOST28147_mainStep(II)I
    .locals 4
    .param p1, "n1"    # I
    .param p2, "key"    # I

    .prologue
    .line 259
    add-int v0, p2, p1

    .line 263
    .local v0, "cm":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x0

    aget-byte v2, v2, v3

    shl-int/lit8 v1, v2, 0x0

    .line 264
    .local v1, "om":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x10

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 265
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x8

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x20

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 266
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x30

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    .line 267
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x40

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    .line 268
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x14

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x50

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 269
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x18

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x60

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    .line 270
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    shr-int/lit8 v3, v0, 0x1c

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x70

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    .line 272
    shl-int/lit8 v2, v1, 0xb

    ushr-int/lit8 v3, v1, 0x15

    or-int/2addr v2, v3

    return v2
.end method

.method private static addSBox(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "sBoxName"    # Ljava/lang/String;
    .param p1, "sBox"    # [B

    .prologue
    .line 141
    sget-object v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private bytesToint([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 338
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "userKey"    # [B

    .prologue
    const/16 v4, 0x8

    .line 241
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->forEncryption:Z

    .line 243
    array-length v2, p2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 245
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key length invalid. Key needs to be 32 byte - 256 bit!!!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_0
    new-array v1, v4, [I

    .line 249
    .local v1, "key":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v4, :cond_1

    .line 251
    mul-int/lit8 v2, v0, 0x4

    invoke-direct {p0, p2, v2}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->bytesToint([BI)I

    move-result v2

    aput v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    return-object v1
.end method

.method public static getSBox(Ljava/lang/String;)[B
    .locals 3
    .param p0, "sBoxName"    # Ljava/lang/String;

    .prologue
    .line 362
    sget-object v1, Lorg/spongycastle/crypto/engines/GOST28147Engine;->sBoxes:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 364
    .local v0, "sBox":[B
    if-nez v0, :cond_0

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"D-Test\", \"D-A\"."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    return-object v1
.end method

.method private intTobytes(I[BI)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 348
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 349
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 350
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 351
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 352
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "GOST28147"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 163
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v2, :cond_2

    move-object v0, p2

    .line 165
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    .line 170
    .local v0, "param":Lorg/spongycastle/crypto/params/ParametersWithSBox;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v1

    .line 171
    .local v1, "sBox":[B
    array-length v2, v1

    sget-object v3, Lorg/spongycastle/crypto/engines/GOST28147Engine;->Sbox_Default:[B

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid S-box passed to GOST28147 init"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->S:[B

    .line 180
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->generateWorkingKey(Z[B)[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    .line 195
    .end local v0    # "param":Lorg/spongycastle/crypto/params/ParametersWithSBox;
    .end local v1    # "sBox":[B
    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    :goto_0
    return-void

    .line 186
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    instance-of v2, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_3

    .line 188
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->generateWorkingKey(Z[B)[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    goto :goto_0

    .line 191
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    if-eqz p2, :cond_1

    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter passed to GOST28147 init - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GOST28147 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 220
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 225
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147Engine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->GOST28147Func([I[BI[BI)V

    .line 230
    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method
