.class public final enum Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
.super Ljava/lang/Enum;
.source "TorSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/crypto/TorSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DigestAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

.field public static final enum DIGEST_SHA1:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

.field public static final enum DIGEST_SHA256:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    const-string v1, "DIGEST_SHA1"

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->DIGEST_SHA1:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    new-instance v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    const-string v1, "DIGEST_SHA256"

    invoke-direct {v0, v1, v3}, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->DIGEST_SHA256:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    sget-object v1, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->DIGEST_SHA1:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->DIGEST_SHA256:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->$VALUES:[Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->$VALUES:[Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    return-object v0
.end method
