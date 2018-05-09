.class final Lde/schildbach/wallet/camera/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 4
    .param p1, "size1"    # Landroid/hardware/Camera$Size;
    .param p2, "size2"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 151
    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int v0, v2, v3

    .line 152
    .local v0, "pixels1":I
    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int v1, v2, v3

    .line 154
    .local v1, "pixels2":I
    if-ge v0, v1, :cond_0

    .line 155
    const/4 v2, 0x1

    .line 159
    :goto_0
    return v2

    .line 156
    :cond_0
    if-le v0, v1, :cond_1

    .line 157
    const/4 v2, -0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 147
    check-cast p1, Landroid/hardware/Camera$Size;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/hardware/Camera$Size;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/camera/CameraManager$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
