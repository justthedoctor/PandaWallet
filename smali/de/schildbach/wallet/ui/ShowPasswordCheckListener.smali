.class public final Lde/schildbach/wallet/ui/ShowPasswordCheckListener;
.super Ljava/lang/Object;
.source "ShowPasswordCheckListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private passwordView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "passwordView"    # Landroid/widget/EditText;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;->passwordView:Landroid/widget/EditText;

    .line 37
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 42
    iget-object v1, p0, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;->passwordView:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 44
    return-void

    .line 42
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method
