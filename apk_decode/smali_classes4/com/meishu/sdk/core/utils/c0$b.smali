.class public Lcom/meishu/sdk/core/utils/c0$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/c0;->a(Landroid/graphics/Bitmap;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Lcom/meishu/sdk/core/utils/c0;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/c0;[BLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/c0$b;->d:Lcom/meishu/sdk/core/utils/c0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/c0$b;->a:[B

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/c0$b;->b:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/c0$b;->c:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/core/domain/HttpResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/HttpResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/c0$b;->a:[B

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/HttpResponse;->setResponseBody(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/c0$b;->d:Lcom/meishu/sdk/core/utils/c0;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/meishu/sdk/core/utils/c0;->a:Lcom/meishu/sdk/core/utils/x;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/c0$b;->b:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/c0$b;->c:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    invoke-interface {v1, v0, v2, v3}, Lcom/meishu/sdk/core/utils/x;->a(Lcom/meishu/sdk/core/domain/HttpResponse;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
