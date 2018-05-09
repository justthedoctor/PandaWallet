.class public final enum Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
.super Ljava/lang/Enum;
.source "RouterDescriptorKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ACCEPT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ALLOW_SINGLE_HOP_EXITS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum BANDWIDTH:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum CACHES_EXTRA_INFO:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum CONTACT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum EVENTDNS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum EXTRA_INFO_DIGEST:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum FAMILY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum FINGERPRINT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum HIBERNATING:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum HIDDEN_SERVICE_DIR:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum PLATFORM:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum PROTOCOLS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum PUBLISHED:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum READ_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum REJECT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ROUTER:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ROUTER_SIGNATURE:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum SIGNING_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum UPTIME:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final VARIABLE_ARGUMENT_COUNT:I = -0x1

.field public static final enum WRITE_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 8
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "ROUTER"

    const-string v2, "router"

    invoke-direct {v0, v1, v6, v2, v9}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "BANDWIDTH"

    const-string v2, "bandwidth"

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->BANDWIDTH:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "PLATFORM"

    const-string v2, "platform"

    invoke-direct {v0, v1, v7, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PLATFORM:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "PUBLISHED"

    const-string v2, "published"

    invoke-direct {v0, v1, v8, v2, v7}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "FINGERPRINT"

    const/4 v2, 0x4

    const-string v3, "fingerprint"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 13
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "HIBERNATING"

    const-string v2, "hibernating"

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIBERNATING:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 14
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "UPTIME"

    const/4 v2, 0x6

    const-string v3, "uptime"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UPTIME:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 15
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "ONION_KEY"

    const/4 v2, 0x7

    const-string v3, "onion-key"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 16
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "NTOR_ONION_KEY"

    const/16 v2, 0x8

    const-string v3, "ntor-onion-key"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 17
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "SIGNING_KEY"

    const/16 v2, 0x9

    const-string v3, "signing-key"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->SIGNING_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 18
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "ACCEPT"

    const/16 v2, 0xa

    const-string v3, "accept"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ACCEPT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 19
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "REJECT"

    const/16 v2, 0xb

    const-string v3, "reject"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->REJECT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 20
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "ROUTER_SIGNATURE"

    const/16 v2, 0xc

    const-string v3, "router-signature"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER_SIGNATURE:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 21
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "CONTACT"

    const/16 v2, 0xd

    const-string v3, "contact"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CONTACT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 22
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "FAMILY"

    const/16 v2, 0xe

    const-string v3, "family"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FAMILY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 23
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "READ_HISTORY"

    const/16 v2, 0xf

    const-string v3, "read-history"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->READ_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 24
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "WRITE_HISTORY"

    const/16 v2, 0x10

    const-string v3, "write-history"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->WRITE_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 25
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "EVENTDNS"

    const/16 v2, 0x11

    const-string v3, "eventdns"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EVENTDNS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 26
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "CACHES_EXTRA_INFO"

    const/16 v2, 0x12

    const-string v3, "caches-extra-info"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CACHES_EXTRA_INFO:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 27
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "EXTRA_INFO_DIGEST"

    const/16 v2, 0x13

    const-string v3, "extra-info-digest"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EXTRA_INFO_DIGEST:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 28
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "HIDDEN_SERVICE_DIR"

    const/16 v2, 0x14

    const-string v3, "hidden-service-dir"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIDDEN_SERVICE_DIR:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 29
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "PROTOCOLS"

    const/16 v2, 0x15

    const-string v3, "protocols"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PROTOCOLS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 30
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "ALLOW_SINGLE_HOP_EXITS"

    const/16 v2, 0x16

    const-string v3, "allow-single-hop-exits"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ALLOW_SINGLE_HOP_EXITS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 31
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v1, "UNKNOWN_KEYWORD"

    const/16 v2, 0x17

    const-string v3, "KEYWORD NOT FOUND"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 3
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->BANDWIDTH:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PLATFORM:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIBERNATING:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UPTIME:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->SIGNING_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ACCEPT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->REJECT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER_SIGNATURE:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CONTACT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FAMILY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->READ_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->WRITE_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EVENTDNS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CACHES_EXTRA_INFO:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EXTRA_INFO_DIGEST:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIDDEN_SERVICE_DIR:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PROTOCOLS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ALLOW_SINGLE_HOP_EXITS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 40
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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->keyword:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->argumentCount:I

    .line 45
    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    .locals 5
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->values()[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    move-result-object v0

    .local v0, "arr$":[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 57
    .local v2, "k":Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    .end local v2    # "k":Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    :goto_1
    return-object v2

    .line 56
    .restart local v2    # "k":Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "k":Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    :cond_1
    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
