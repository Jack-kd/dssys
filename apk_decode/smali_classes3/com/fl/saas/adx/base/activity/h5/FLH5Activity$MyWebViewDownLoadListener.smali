.class Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$MyWebViewDownLoadListener;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-object p2, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$MyWebViewDownLoadListener;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-static {p2, p1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->access$300(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;Ljava/lang/String;)V

    return-void
.end method
