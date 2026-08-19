.class public Lcom/meishu/sdk/meishu_ad/l0$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/l0;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/l0;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/l0;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/l0$a;->b:Lcom/meishu/sdk/meishu_ad/l0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/l0$a;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/l0$a;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/l0$a;->b:Lcom/meishu/sdk/meishu_ad/l0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/l0;->c:Lcom/meishu/sdk/meishu_ad/v;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/l0$a;->a:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    const/16 v1, 0x19

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/l0$a;->b:Lcom/meishu/sdk/meishu_ad/l0;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/l0;->b:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
