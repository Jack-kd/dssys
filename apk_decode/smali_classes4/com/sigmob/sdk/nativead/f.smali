.class public Lcom/sigmob/sdk/nativead/f;
.super Lcom/sigmob/sdk/base/common/y;


# instance fields
.field private c:Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/y;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdPrivacyTemplateFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v1}, Lcom/czhj/volley/toolbox/DownloadItem;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/y;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadPrivacy()Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->privacy_template_url:Ljava/lang/String;

    iput-object v2, v1, Lcom/czhj/volley/toolbox/DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/czhj/volley/toolbox/DownloadItem;->filePath:Ljava/lang/String;

    sget-object v0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->OTHER:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    iput-object v0, v1, Lcom/czhj/volley/toolbox/DownloadItem;->type:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    invoke-static {}, Lcom/sigmob/sdk/base/common/t;->a()Lcom/czhj/volley/toolbox/FileDownloader;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sigmob/sdk/nativead/f$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/nativead/f$1;-><init>(Lcom/sigmob/sdk/nativead/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/czhj/volley/toolbox/FileDownloader;->add(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/czhj/volley/toolbox/FileDownloadRequest$FileDownloadListener;)Lcom/czhj/volley/toolbox/FileDownloader$DownloadController;

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z
    .locals 0

    .line 5
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/nativead/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/f;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/common/p;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->getFixIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/nativead/S;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/S;-><init>(Lcom/sigmob/sdk/nativead/f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V
    .locals 3

    .line 3
    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/base/common/y;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/f;->c:Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    instance-of v1, v0, Lcom/sigmob/sdk/nativead/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sigmob/sdk/nativead/g;

    new-instance v1, Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;-><init>(Lcom/sigmob/sdk/nativead/g;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/f;->c:Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;

    invoke-virtual {v1, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LandNative"

    const-class v2, Lcom/sigmob/sdk/base/common/AdActivity;

    invoke-static {v0, v2, p1, p2, v1}, Lcom/sigmob/sdk/base/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/f;->a(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/f;->c:Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/f;->c:Lcom/sigmob/sdk/nativead/NativeAdBroadcastReceiver;

    :cond_0
    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/y;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method
