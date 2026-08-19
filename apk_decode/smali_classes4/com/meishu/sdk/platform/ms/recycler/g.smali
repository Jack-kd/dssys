.class public Lcom/meishu/sdk/platform/ms/recycler/g;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

.field public final synthetic e:Landroid/widget/RelativeLayout;

.field public final synthetic f:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/g;->f:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/g;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/g;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/recycler/g;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/platform/ms/recycler/g;->d:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/platform/ms/recycler/g;->e:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/g;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/meishu/sdk/platform/ms/recycler/g$a;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/ms/recycler/g$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/g;Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method
