.class public final enum Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
.super Ljava/lang/Enum;
.source "KeyCertificateKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_ADDRESS:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_IDENTITY_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_CERTIFICATE_VERSION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_CERTIFICATION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_CROSSCERT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_EXPIRES:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_PUBLISHED:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_SIGNING_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum FINGERPRINT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_KEY_CERTIFICATE_VERSION"

    const-string v2, "dir-key-certificate-version"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATE_VERSION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_ADDRESS"

    const-string v2, "dir-address"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_ADDRESS:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "FINGERPRINT"

    const-string v2, "fingerprint"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_IDENTITY_KEY"

    const-string v2, "dir-identity-key"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_IDENTITY_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_KEY_PUBLISHED"

    const-string v2, "dir-key-published"

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_PUBLISHED:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 13
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_KEY_EXPIRES"

    const/4 v2, 0x5

    const-string v3, "dir-key-expires"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_EXPIRES:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 14
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_SIGNING_KEY"

    const/4 v2, 0x6

    const-string v3, "dir-signing-key"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_SIGNING_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 15
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_KEY_CROSSCERT"

    const/4 v2, 0x7

    const-string v3, "dir-key-crosscert"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CROSSCERT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 16
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "DIR_KEY_CERTIFICATION"

    const/16 v2, 0x8

    const-string v3, "dir-key-certification"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 17
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v1, "UNKNOWN_KEYWORD"

    const/16 v2, 0x9

    const-string v3, "KEYWORD NOT FOUND"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATE_VERSION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_ADDRESS:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_IDENTITY_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_PUBLISHED:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_EXPIRES:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_SIGNING_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CROSSCERT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "argumentCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->keyword:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->argumentCount:I

    .line 25
    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    .locals 5
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->values()[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    move-result-object v0

    .local v0, "arr$":[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 37
    .local v2, "k":Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    .end local v2    # "k":Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    :goto_1
    return-object v2

    .line 36
    .restart local v2    # "k":Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "k":Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    :cond_1
    sget-object v2, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
