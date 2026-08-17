.class Lcom/ubix/ssp/ad/k/b$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/z/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/k/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    iput p2, p0, Lcom/ubix/ssp/ad/k/b$l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 3

    .line 1
    :try_start_0
    iget p1, p0, Lcom/ubix/ssp/ad/k/b$l;->a:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    sget p1, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->m()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ubix/ssp/ad/b;->a(Landroid/widget/ImageView;)V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1, v2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;Z)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->d(Lcom/ubix/ssp/ad/k/b;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->m(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/g/j;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->e(Lcom/ubix/ssp/ad/k/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->l(Lcom/ubix/ssp/ad/k/b;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->f(Lcom/ubix/ssp/ad/k/b;)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    const-string v0, "\u5173\u95ed\u5e7f\u544a\u65f6\u5c1a\u672a\u6536\u5230\u9a8c\u8bc1\u7ed3\u679c"

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->m(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/g/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onAdClosed()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;Lcom/ubix/ssp/ad/g/j;)Lcom/ubix/ssp/ad/g/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/z/h;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string p1, "19"

    const-string p2, "16"

    const-string v0, "18"

    const-string v1, "17"

    :try_start_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v2

    if-eqz v2, :cond_7

    sget v2, Lcom/ubix/ssp/ad/d/b;->E:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/b;->m()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/ubix/ssp/ad/b;->a(Landroid/widget/ImageView;)V

    :cond_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v2

    iget v4, p0, Lcom/ubix/ssp/ad/k/b$l;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "__CLICK_AREA__"

    const-string v6, "__CLICK_TRIGGER__"

    if-ne v4, v3, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/h;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/z/h;->c()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/h;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/z/h;->a()V

    return-void

    :cond_2
    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    if-ne v4, v0, :cond_5

    invoke-virtual {v2, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/4 p2, 0x3

    if-ne v4, p2, :cond_6

    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v0

    goto :goto_1

    :goto_3
    invoke-virtual {p1, p2, v0}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    return-void

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 2

    const-string p1, "onViewInitialized onClosed onClosed"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    iget v0, p0, Lcom/ubix/ssp/ad/k/b$l;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;Z)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 2

    const-string v0, "onViewInitialized new showRewardPopDialog"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$l;->b:Lcom/ubix/ssp/ad/k/b;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    return-void
.end method
