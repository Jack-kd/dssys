.class Lcom/ubix/ssp/ad/i/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/ubix/ssp/ad/i/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/b;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/b$a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/b$a;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    const-string p2, "\u5185\u5bb9\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    const-string p2, "onAdRenderFailed in"

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    const-string p1, "onAdRenderFailed out"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p2}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object p2

    invoke-interface {p2}, Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/i/c;->w()V

    :cond_4
    :try_start_0
    const-string p1, "onAdRenderSucceed in"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p3}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string p3, "native_parent_view_key"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderSucceed(Landroid/view/View;)V

    const-string p1, "onAdRenderSucceed out"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$a;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$a;->d:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    const-string v0, "onAdRenderFailed in"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$a;->a:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    const-string p1, "onAdRenderFailed out"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method
