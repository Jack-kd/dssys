.class public Lcom/meishu/sdk/meishu_ad/z;
.super Lcom/meishu/sdk/core/safe/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;IILandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/z;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/z;->b:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/z;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 8
    .line 9
    iput p5, p0, Lcom/meishu/sdk/meishu_ad/z;->d:I

    .line 10
    .line 11
    iput p6, p0, Lcom/meishu/sdk/meishu_ad/z;->e:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/meishu/sdk/meishu_ad/z;->f:Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/n;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/v;->b(Lcom/meishu/sdk/meishu_ad/v;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/meishu/sdk/meishu_ad/z$a;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/meishu/sdk/meishu_ad/z$a;-><init>(Lcom/meishu/sdk/meishu_ad/z;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
