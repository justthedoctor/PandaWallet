.class public final Lcom/actionbarsherlock/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static abs__action_bar_embed_tabs:I

.field public static abs__action_bar_expanded_action_views_exclusive:I

.field public static abs__config_actionMenuItemAllCaps:I

.field public static abs__config_allowActionMenuItemTextWithIcon:I

.field public static abs__config_showMenuShortcutsWhenKeyboardPresent:I

.field public static abs__split_action_bar_is_narrow:I

.field public static ga_autoActivityTracking:I

.field public static ga_reportUncaughtExceptions:I

.field public static show_exchange_rates_option:I

.field public static show_local_balance:I

.field public static wallet_actions_top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    const/high16 v0, 0x7f070000

    sput v0, Lcom/actionbarsherlock/R$bool;->abs__action_bar_embed_tabs:I

    .line 569
    const v0, 0x7f070002

    sput v0, Lcom/actionbarsherlock/R$bool;->abs__action_bar_expanded_action_views_exclusive:I

    .line 574
    const v0, 0x7f070004

    sput v0, Lcom/actionbarsherlock/R$bool;->abs__config_actionMenuItemAllCaps:I

    .line 582
    const v0, 0x7f070005

    sput v0, Lcom/actionbarsherlock/R$bool;->abs__config_allowActionMenuItemTextWithIcon:I

    .line 586
    const v0, 0x7f070003

    sput v0, Lcom/actionbarsherlock/R$bool;->abs__config_showMenuShortcutsWhenKeyboardPresent:I

    .line 587
    const v0, 0x7f070001

    sput v0, Lcom/actionbarsherlock/R$bool;->abs__split_action_bar_is_narrow:I

    .line 590
    const v0, 0x7f070006

    sput v0, Lcom/actionbarsherlock/R$bool;->ga_autoActivityTracking:I

    .line 593
    const v0, 0x7f070007

    sput v0, Lcom/actionbarsherlock/R$bool;->ga_reportUncaughtExceptions:I

    .line 594
    const v0, 0x7f070009

    sput v0, Lcom/actionbarsherlock/R$bool;->show_exchange_rates_option:I

    .line 595
    const v0, 0x7f07000a

    sput v0, Lcom/actionbarsherlock/R$bool;->show_local_balance:I

    .line 596
    const v0, 0x7f070008

    sput v0, Lcom/actionbarsherlock/R$bool;->wallet_actions_top:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
