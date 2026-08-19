.class Lcom/sigmob/sdk/base/common/o$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "downloadButtonAction"

.field static final b:Ljava/lang/String; = "downloadAction"


# instance fields
.field private final c:Lcom/sigmob/sdk/downloader/f;

.field private final d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/f;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/o$a;->c:Lcom/sigmob/sdk/downloader/f;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/o$a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/o$a;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/o$a;)Lcom/sigmob/sdk/downloader/f;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/o$a;->c:Lcom/sigmob/sdk/downloader/f;

    return-object p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/o$a;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/base/common/o$a;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$a;->c:Lcom/sigmob/sdk/downloader/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$a;->e:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/o$a;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/l;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/o$a;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$a;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "downloadId"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$a;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action.interstitial.download.pause"

    invoke-static {p1, v0, p2, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/o$a;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sigmob/sdk/base/common/s0;

    invoke-direct {v0, p2}, Lcom/sigmob/sdk/base/common/s0;-><init>(Lcom/sigmob/sdk/downloader/f;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$a;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->B()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/o$a;->c:Lcom/sigmob/sdk/downloader/f;

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/l;->c(Lcom/sigmob/sdk/downloader/f;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sigmob/sdk/base/common/o$a$1;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/base/common/o$a$1;-><init>(Lcom/sigmob/sdk/base/common/o$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method
