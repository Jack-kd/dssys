.class public Lcom/meishu/sdk/core/utils/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/cache/d;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/x;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/x;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/c0;->a:Lcom/meishu/sdk/core/utils/x;

    .line 2
    .line 3
    iput p2, p0, Lcom/meishu/sdk/core/utils/c0;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/meishu/sdk/core/utils/c0;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/meishu/sdk/core/utils/c0;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/meishu/sdk/core/utils/c0$a;

    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/utils/c0$a;-><init>(Lcom/meishu/sdk/core/utils/c0;I)V

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;[BZ)V
    .locals 3

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/meishu/sdk/core/utils/f0;->a([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lcom/meishu/sdk/core/utils/c0;->b:I

    iget v1, p0, Lcom/meishu/sdk/core/utils/c0;->c:I

    iget v2, p0, Lcom/meishu/sdk/core/utils/c0;->d:I

    invoke-static {v0, p1, v1, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(ILandroid/graphics/Bitmap;II)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 6
    aget-object p1, v0, v1

    const/4 v1, 0x1

    .line 7
    aget-object p3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    new-instance v0, Lcom/meishu/sdk/core/utils/c0$b;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/meishu/sdk/core/utils/c0$b;-><init>(Lcom/meishu/sdk/core/utils/c0;[BLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
