.class public final enum Lcom/google/bitcoin/core/RejectMessage$RejectCode;
.super Ljava/lang/Enum;
.source "RejectMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/RejectMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RejectCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/RejectMessage$RejectCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum CHECKPOINT:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum DUPLICATE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum DUST:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum INSUFFICIENTFEE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum INVALID:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum MALFORMED:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum NONSTANDARD:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum OBSOLETE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

.field public static final enum OTHER:Lcom/google/bitcoin/core/RejectMessage$RejectCode;


# instance fields
.field code:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "MALFORMED"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->MALFORMED:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 33
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "INVALID"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->INVALID:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 35
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "OBSOLETE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v6, v2}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->OBSOLETE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 40
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "DUPLICATE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v7, v2}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->DUPLICATE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 47
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "NONSTANDARD"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v8, v2}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->NONSTANDARD:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 52
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "DUST"

    const/4 v2, 0x5

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->DUST:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 54
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "INSUFFICIENTFEE"

    const/4 v2, 0x6

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->INSUFFICIENTFEE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 56
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "CHECKPOINT"

    const/4 v2, 0x7

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->CHECKPOINT:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 57
    new-instance v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    const-string v1, "OTHER"

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->OTHER:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    sget-object v1, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->MALFORMED:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->INVALID:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->OBSOLETE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->DUPLICATE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->NONSTANDARD:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->DUST:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->INSUFFICIENTFEE:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->CHECKPOINT:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->OTHER:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->$VALUES:[Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "code"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->code:B

    return-void
.end method

.method static fromCode(B)Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    .locals 5
    .param p0, "code"    # B

    .prologue
    .line 62
    invoke-static {}, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->values()[Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 63
    .local v3, "rejectCode":Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    iget-byte v4, v3, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->code:B

    if-ne v4, p0, :cond_0

    .line 65
    .end local v3    # "rejectCode":Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    :goto_1
    return-object v3

    .line 62
    .restart local v3    # "rejectCode":Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "rejectCode":Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    :cond_1
    sget-object v3, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->OTHER:Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/RejectMessage$RejectCode;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/bitcoin/core/RejectMessage$RejectCode;->$VALUES:[Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/RejectMessage$RejectCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/RejectMessage$RejectCode;

    return-object v0
.end method
