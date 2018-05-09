.class public final enum Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
.super Ljava/lang/Enum;
.source "HSDescriptorCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CookieType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

.field public static final enum COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

.field public static final enum COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    const-string v1, "COOKIE_BASIC"

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    const-string v1, "COOKIE_STEALTH"

    invoke-direct {v0, v1, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    return-object v0
.end method
