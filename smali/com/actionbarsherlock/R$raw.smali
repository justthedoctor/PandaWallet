.class public final Lcom/actionbarsherlock/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static coins_received:I

.field public static send_coins_broadcast_1:I

.field public static send_coins_broadcast_2:I

.field public static send_coins_broadcast_3:I

.field public static send_coins_broadcast_4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1234
    const/high16 v0, 0x7f050000

    sput v0, Lcom/actionbarsherlock/R$raw;->coins_received:I

    .line 1235
    const v0, 0x7f050001

    sput v0, Lcom/actionbarsherlock/R$raw;->send_coins_broadcast_1:I

    .line 1236
    const v0, 0x7f050002

    sput v0, Lcom/actionbarsherlock/R$raw;->send_coins_broadcast_2:I

    .line 1237
    const v0, 0x7f050003

    sput v0, Lcom/actionbarsherlock/R$raw;->send_coins_broadcast_3:I

    .line 1238
    const v0, 0x7f050004

    sput v0, Lcom/actionbarsherlock/R$raw;->send_coins_broadcast_4:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
