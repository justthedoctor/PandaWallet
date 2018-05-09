.class public final enum Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;
.super Ljava/lang/Enum;
.source "TestWithNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/testing/TestWithNetworkConnections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

.field public static final enum BLOCKING_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

.field public static final enum BLOCKING_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

.field public static final enum NIO_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

.field public static final enum NIO_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    const-string v1, "NIO_CLIENT_MANAGER"

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    .line 62
    new-instance v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    const-string v1, "BLOCKING_CLIENT_MANAGER"

    invoke-direct {v0, v1, v3}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    .line 63
    new-instance v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    const-string v1, "NIO_CLIENT"

    invoke-direct {v0, v1, v4}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    .line 64
    new-instance v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    const-string v1, "BLOCKING_CLIENT"

    invoke-direct {v0, v1, v5}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT_MANAGER:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->NIO_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->BLOCKING_CLIENT:Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->$VALUES:[Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    return-object v0
.end method

.method public static values()[Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->$VALUES:[Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    invoke-virtual {v0}, [Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/bitcoin/testing/TestWithNetworkConnections$ClientType;

    return-object v0
.end method
