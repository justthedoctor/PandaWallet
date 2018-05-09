.class public Lcom/google/bitcoin/crypto/ChildNumber;
.super Ljava/lang/Object;
.source "ChildNumber.java"


# static fields
.field public static final PRIV_BIT:I = -0x80000000

.field public static final ZERO:Lcom/google/bitcoin/crypto/ChildNumber;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/google/bitcoin/crypto/ChildNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/bitcoin/crypto/ChildNumber;-><init>(I)V

    sput-object v0, Lcom/google/bitcoin/crypto/ChildNumber;->ZERO:Lcom/google/bitcoin/crypto/ChildNumber;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    .line 40
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "childNumber"    # I
    .param p2, "isPrivate"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/bitcoin/crypto/ChildNumber;->hasPrivateBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Most significant bit is reserved and shouldn\'t be set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    .end local p1    # "childNumber":I
    :cond_1
    iput p1, p0, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    .line 36
    return-void
.end method

.method private static hasPrivateBit(I)Z
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 51
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    check-cast p1, Lcom/google/bitcoin/crypto/ChildNumber;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildNumber()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getI()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    return v0
.end method

.method public isPrivateDerivation()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/bitcoin/crypto/ChildNumber;->i:I

    invoke-static {v0}, Lcom/google/bitcoin/crypto/ChildNumber;->hasPrivateBit(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const-string v1, "%d%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/ChildNumber;->getChildNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/ChildNumber;->isPrivateDerivation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\'"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
