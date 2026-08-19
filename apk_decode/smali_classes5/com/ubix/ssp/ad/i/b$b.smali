.class Lcom/ubix/ssp/ad/i/b$b;
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
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Lcom/ubix/ssp/ad/i/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/b;Ljava/util/ArrayList;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/b$b;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/b$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/ubix/ssp/ad/i/b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string p1, "onAdRenderSucceed out"

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->f(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/i/c;

    move-result-object p2

    const-string p3, "onAdRenderFailed out"

    const-string p4, "onAdRenderFailed in"

    const-string v0, "\u5e7f\u544aView\u4e3a\u7a7a"

    const/4 v1, 0x2

    if-nez p2, :cond_2

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    invoke-static {p3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v2}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p2, v2, :cond_8

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v2}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_8

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_3
    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_4
    invoke-static {p3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p2, p3}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/i/c;->w()V

    :cond_6
    :try_start_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p2, :cond_7

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p3}, Lcom/ubix/ssp/ad/i/b;->e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    iget-object p4, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {p4}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    const-string p4, "native_parent_view_key"

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-interface {p2, p3}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderSucceed(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_7
    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/b$b;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    :cond_8
    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$b;->e:Lcom/ubix/ssp/ad/i/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b$b;->b:Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    return-void
.end method
