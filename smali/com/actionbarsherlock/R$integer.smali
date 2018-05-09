.class public final Lcom/actionbarsherlock/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static abs__max_action_buttons:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1143
    const/high16 v0, 0x7f0a0000

    sput v0, Lcom/actionbarsherlock/R$integer;->abs__max_action_buttons:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
