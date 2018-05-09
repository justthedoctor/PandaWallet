.class public interface abstract Lcom/subgraph/orchid/dashboard/DashboardRenderable;
.super Ljava/lang/Object;
.source "DashboardRenderable.java"


# static fields
.field public static final DASHBOARD_CIRCUITS:I = 0x8

.field public static final DASHBOARD_CONNECTIONS:I = 0x1

.field public static final DASHBOARD_CONNECTIONS_VERBOSE:I = 0x2

.field public static final DASHBOARD_PREDICTED_PORTS:I = 0x4

.field public static final DASHBOARD_STREAMS:I = 0x10


# virtual methods
.method public abstract dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
