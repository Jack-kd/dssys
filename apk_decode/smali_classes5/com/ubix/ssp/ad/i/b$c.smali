.class Lcom/ubix/ssp/ad/i/b$c;
.super Lcom/ubix/ssp/ad/g/k/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/i/c;

.field final synthetic b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

.field final synthetic c:Lcom/ubix/ssp/ad/i/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/b;Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/b$c;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/g/k/g;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/b$c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/b$c;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ubix/ssp/ad/i/a;->q:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/a;->setShakeSensor(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_4

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    long-to-int v0, v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->g(Lcom/ubix/ssp/ad/i/b;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->g(Lcom/ubix/ssp/ad/i/b;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;->reportVideoStart()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->g(Lcom/ubix/ssp/ad/i/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    const/16 v1, 0x13a1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->g(Lcom/ubix/ssp/ad/i/b;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    const/16 v1, 0x13ba

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->g(Lcom/ubix/ssp/ad/i/b;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    const/16 v1, 0x13d3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->h(Lcom/ubix/ssp/ad/i/b;)I

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;->onVideoProgressUpdate(JJ)V

    :cond_5
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->f(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/i/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->f(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/i/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    const/16 v1, 0x1450

    invoke-virtual {v0, p1, v1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;->onVideoError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppIntroduceLink()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->c(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "__NO_CLICK_CONFIRM_KEY__"

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->f(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/i/c;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p3}, Lcom/ubix/ssp/ad/i/b;->i(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/i/a;

    move-result-object p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p3}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object p3

    :cond_1
    move-object v5, p3

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p3

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget v3, p3, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v1, v3}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v1

    const/16 v3, 0x2e

    const-string v9, "TRUE"

    if-ne v1, v3, :cond_2

    :try_start_0
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v5, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v0

    new-instance v3, Lcom/ubix/ssp/ad/i/b$c$a;

    invoke-direct {v3, p0, v1, p3}, Lcom/ubix/ssp/ad/i/b$c$a;-><init>(Lcom/ubix/ssp/ad/i/b$c;ILcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {v2, v0, v3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/a$y;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v3}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v3}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "native_custom_confirm_window_listener_key"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v3

    iget-object v7, p0, Lcom/ubix/ssp/ad/i/b$c;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-nez v0, :cond_4

    :goto_2
    move-object v8, v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/ubix/ssp/ad/g/c;

    goto :goto_2

    :goto_3
    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Lcom/ubix/ssp/ad/g/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p3, Lcom/ubix/ssp/ad/d/a;->s:Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/b;->k()V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/i/a;->s()V

    const-string p2, "__CLICK_AREA__"

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "12"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/b;->setSlideTrigger(Z)V

    iput-boolean p1, p3, Lcom/ubix/ssp/ad/d/a;->t:Z

    :cond_5
    const-string p1, "__MULTI_CLICK_KEY__"

    invoke-virtual {v5, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;->reportVideoComplete()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    const/16 v1, 0x1450

    invoke-virtual {v0, p1, v1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;->onVideoComplete()V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;I)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 4

    const-string v0, "onAdClosed out"

    const-string v1, "onAdClosed in"

    :try_start_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iget-object v2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-boolean v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->a:Lcom/ubix/ssp/ad/i/c;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/b$c;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    invoke-virtual {v2, p1, v3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdClosed()V

    :cond_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdClosed()V

    :cond_2
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method public f(I)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPermissionLink()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->c(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public g(I)V
    .locals 6

    const-string p1, "lst_stp"

    const-string v0, "lst_sts"

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v3}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-nez v4, :cond_2

    if-nez v1, :cond_2

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;->onVideoPause()V

    :cond_3
    :goto_2
    return-void
.end method

.method public h(I)V
    .locals 2

    .line 2
    const-string p1, "lst_sts"

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;->onVideoStart()V

    :cond_1
    return-void
.end method

.method public i(I)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPrivacyLink()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->c(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public j(I)V
    .locals 8

    const-string p1, "lst_stp"

    const-string v0, "lst_res"

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v4}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v5}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v5}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v6}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-eqz v4, :cond_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v1, 0x64

    cmp-long v1, v4, v1

    if-lez v1, :cond_2

    if-nez v3, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v1, "lst_sts"

    :try_start_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$c;->c:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;->onVideoResume()V

    :cond_2
    return-void
.end method
