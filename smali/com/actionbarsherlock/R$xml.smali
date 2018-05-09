.class public final Lcom/actionbarsherlock/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static about:I

.field public static preferences:I

.field public static wallet_balance_widget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1648
    const/high16 v0, 0x7f040000

    sput v0, Lcom/actionbarsherlock/R$xml;->about:I

    .line 1649
    const v0, 0x7f040001

    sput v0, Lcom/actionbarsherlock/R$xml;->preferences:I

    .line 1650
    const v0, 0x7f040002

    sput v0, Lcom/actionbarsherlock/R$xml;->wallet_balance_widget:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
