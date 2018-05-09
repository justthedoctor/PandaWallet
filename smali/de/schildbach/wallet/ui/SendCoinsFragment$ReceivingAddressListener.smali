.class final Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReceivingAddressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/SendCoinsFragment$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 188
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$100(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 190
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$000(Lde/schildbach/wallet/ui/SendCoinsFragment;Z)V

    .line 191
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$000(Lde/schildbach/wallet/ui/SendCoinsFragment;Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 201
    return-void
.end method
