.class Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;
.super Ljava/lang/Object;
.source "BlockchainServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->changed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

.field final synthetic val$numPeers:I


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;I)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iput p2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->val$numPeers:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v3, v3, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v3}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getConnectivityNotificationEnabled()Z

    move-result v0

    .line 272
    .local v0, "connectivityNotificationEnabled":Z
    if-eqz v0, :cond_0

    iget v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->val$numPeers:I

    if-nez v3, :cond_1

    .line 274
    :cond_0
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v2, v2, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$600(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 315
    :goto_0
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v2, v2, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    iget v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->val$numPeers:I

    invoke-static {v2, v3}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$700(Lde/schildbach/wallet/service/BlockchainServiceImpl;I)V

    .line 316
    return-void

    .line 278
    :cond_1
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v3, v3, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    .local v1, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    const v3, 0x7f0200a7

    iget v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->val$numPeers:I

    if-le v4, v2, :cond_2

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 280
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v2, v2, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    const v3, 0x7f0b010c

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 281
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v2, v2, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    const v3, 0x7f0b00ea

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->val$numPeers:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v2, v2, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v4, v4, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    const-class v5, Lde/schildbach/wallet/ui/WalletActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 285
    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 286
    iget-object v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    iget-object v2, v2, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v2}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$600(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 279
    :cond_2
    iget v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;->val$numPeers:I

    goto :goto_1
.end method
