.class public Lcom/meishu/sdk/core/utils/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/x;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/k1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/k1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/j1;->a:Lcom/meishu/sdk/core/utils/k1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/domain/HttpResponse;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/j1;->a:Lcom/meishu/sdk/core/utils/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/k1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v2, v0, Lcom/meishu/sdk/core/utils/k1;->a:Lcom/meishu/sdk/core/utils/x;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, p1, p2, p3}, Lcom/meishu/sdk/core/utils/x;->a(Lcom/meishu/sdk/core/domain/HttpResponse;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, v0, Lcom/meishu/sdk/core/utils/k1;->a:Lcom/meishu/sdk/core/utils/x;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onFailure(Ljava/io/IOException;)V
    .locals 1
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/j1;->a:Lcom/meishu/sdk/core/utils/k1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/k1;->a(Lcom/meishu/sdk/core/utils/k1;Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
