.class public Lde/schildbach/wallet/util/BitmapFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BitmapFragment.java"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final KEY_BITMAP:Ljava/lang/String; = "bitmap"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lde/schildbach/wallet/util/BitmapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/BitmapFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static instance(Landroid/graphics/Bitmap;)Lde/schildbach/wallet/util/BitmapFragment;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 51
    new-instance v1, Lde/schildbach/wallet/util/BitmapFragment;

    invoke-direct {v1}, Lde/schildbach/wallet/util/BitmapFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lde/schildbach/wallet/util/BitmapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "bitmap"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    invoke-virtual {v1, v0}, Lde/schildbach/wallet/util/BitmapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method

.method public static show(Landroid/support/v4/app/FragmentManager;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-static {p1}, Lde/schildbach/wallet/util/BitmapFragment;->instance(Landroid/graphics/Bitmap;)Lde/schildbach/wallet/util/BitmapFragment;

    move-result-object v0

    .line 46
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    sget-object v1, Lde/schildbach/wallet/util/BitmapFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    iput-object p1, p0, Lde/schildbach/wallet/util/BitmapFragment;->activity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 73
    invoke-virtual {p0}, Lde/schildbach/wallet/util/BitmapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "bitmap"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 75
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/app/Dialog;

    iget-object v3, p0, Lde/schildbach/wallet/util/BitmapFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 77
    const v3, 0x7f030017

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 78
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    const v3, 0x7f060030

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 81
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    new-instance v3, Lde/schildbach/wallet/util/BitmapFragment$1;

    invoke-direct {v3, p0}, Lde/schildbach/wallet/util/BitmapFragment$1;-><init>(Lde/schildbach/wallet/util/BitmapFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-object v1
.end method
