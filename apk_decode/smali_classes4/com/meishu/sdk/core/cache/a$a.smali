.class public Lcom/meishu/sdk/core/cache/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/cache/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/meishu/sdk/core/utils/y;


# direct methods
.method public constructor <init>(ZLcom/meishu/sdk/core/utils/y;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/cache/a$a;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/cache/a$a;->b:Lcom/meishu/sdk/core/utils/y;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/meishu/sdk/core/cache/a$a;->a:Z

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/meishu/sdk/core/cache/a$a$b;

    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/cache/a$a$b;-><init>(Lcom/meishu/sdk/core/cache/a$a;I)V

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/cache/a$a;->b:Lcom/meishu/sdk/core/utils/y;

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download image error2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/utils/y;->onFailure(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;[BZ)V
    .locals 0

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-eq p1, p3, :cond_0

    iget-boolean p1, p0, Lcom/meishu/sdk/core/cache/a$a;->a:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/meishu/sdk/core/cache/a$a$a;

    invoke-direct {p1, p0, p2}, Lcom/meishu/sdk/core/cache/a$a$a;-><init>(Lcom/meishu/sdk/core/cache/a$a;[B)V

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/core/cache/a$a;->a([B)V

    return-void
.end method

.method public final a([B)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/cache/a$a;->b:Lcom/meishu/sdk/core/utils/y;

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/meishu/sdk/core/domain/HttpResponse;

    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/HttpResponse;-><init>()V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setResponseBody(Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/core/cache/a$a;->b:Lcom/meishu/sdk/core/utils/y;

    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/utils/y;->onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
