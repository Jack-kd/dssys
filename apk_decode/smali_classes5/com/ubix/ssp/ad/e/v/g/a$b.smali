.class Lcom/ubix/ssp/ad/e/v/g/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/v/g/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/ubix/ssp/ad/e/v/g/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->c:Lcom/ubix/ssp/ad/e/v/g/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->c:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->n()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/v/g/a$b$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/v/g/a$b$a;-><init>(Lcom/ubix/ssp/ad/e/v/g/a$b;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Lcom/ubix/ssp/ad/e/v/g/a$b$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/v/g/a$b$b;-><init>(Lcom/ubix/ssp/ad/e/v/g/a$b;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->f()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    instance-of v1, v0, Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/ubix/ssp/ad/e/v/g/a$b$c;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/v/g/a$b$c;-><init>(Lcom/ubix/ssp/ad/e/v/g/a$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->g()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/t/a/e;->setGifImage([B)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->c:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->c:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->h()Landroid/util/LruCache;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->i()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->j()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->c:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/io/File;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    instance-of v1, v0, Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/ubix/ssp/ad/e/v/g/a$b$d;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/v/g/a$b$d;-><init>(Lcom/ubix/ssp/ad/e/v/g/a$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    check-cast v0, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->k()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/t/a/e;->setGifImage([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->c:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->l()Landroid/util/LruCache;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/g/a;->m()Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$b;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/ubix/ssp/ad/e/v/g/a$b$e;

    invoke-direct {v2, p0, v0}, Lcom/ubix/ssp/ad/e/v/g/a$b$e;-><init>(Lcom/ubix/ssp/ad/e/v/g/a$b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "resource not found form cache"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
