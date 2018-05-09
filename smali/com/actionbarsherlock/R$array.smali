.class public final Lcom/actionbarsherlock/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static preferences_precision_labels:I

.field public static preferences_precision_values:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f0d0001

    sput v0, Lcom/actionbarsherlock/R$array;->preferences_precision_labels:I

    .line 13
    const/high16 v0, 0x7f0d0000

    sput v0, Lcom/actionbarsherlock/R$array;->preferences_precision_values:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
