.class Lcom/ubix/ssp/ad/a$u;
.super Lcom/ubix/ssp/ad/a$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)Lcom/ubix/ssp/ad/a$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

.field final synthetic g:Ljava/util/HashMap;

.field final synthetic h:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iput-object p5, p0, Lcom/ubix/ssp/ad/a$u;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    iput-object p6, p0, Lcom/ubix/ssp/ad/a$u;->g:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/a$z;-><init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a$z;->a(I)V

    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdStatusChanged()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a$z;->a(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ubix/ssp/ad/e/z/e;

    const-string v0, "%"

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdStatusChanged()V

    :cond_2
    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/a$z;->a(ILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ubix/ssp/ad/e/z/e;

    const-string p2, "\u91cd\u65b0\u4e0b\u8f7d"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/g;

    const/16 p3, -0x3e7

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdStatusChanged()V

    :cond_2
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 4
    const-string v0, "__NO_CLICK_CONFIRM_KEY__"

    sget-object v1, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a$z;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ubix/ssp/ad/e/z/e;

    const-string p2, "\u7acb\u5373\u5b89\u88c5"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/g;

    const/16 v1, -0x3e7

    invoke-virtual {p1, p2, v1}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->g:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->g:Ljava/util/HashMap;

    const-string p2, "TRUE"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdStatusChanged()V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/a;->A()V

    return-void
.end method

.method public b(II)V
    .locals 3

    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a$z;->b(II)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ubix/ssp/ad/e/z/e;

    const-string v0, "%"

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdStatusChanged()V

    :cond_2
    return-void
.end method

.method public c(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a$z;->c(II)V

    sget-object p1, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ubix/ssp/ad/e/z/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->a(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$u;->h:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/g;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/g;->b(I)V

    :cond_1
    return-void
.end method
