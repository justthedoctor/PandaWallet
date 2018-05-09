.class public final enum Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
.super Ljava/lang/Enum;
.source "BloomFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BloomUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

.field public static final enum UPDATE_ALL:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

.field public static final enum UPDATE_NONE:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

.field public static final enum UPDATE_P2PUBKEY_ONLY:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    const-string v1, "UPDATE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_NONE:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    .line 42
    new-instance v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    .line 44
    new-instance v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    const-string v1, "UPDATE_P2PUBKEY_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    sget-object v1, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_NONE:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->$VALUES:[Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->$VALUES:[Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    invoke-virtual {v0}, [Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/core/BloomFilter$BloomUpdate;

    return-object v0
.end method
