.class public Lcom/meishu/sdk/meishu_ad/view/player/a$b;
.super Lcom/meishu/sdk/core/safe/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/player/a;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:[Z

.field public final synthetic c:Landroid/media/MediaPlayer;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/view/player/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/a;[I[ZLandroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->d:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->a:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->b:[Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->c:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/d;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p2, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->b:[Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget-boolean v3, v0, v2

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    aget-boolean v0, v0, v1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->d:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 16
    .line 17
    iget v1, v1, Lcom/meishu/sdk/meishu_ad/view/player/a;->b:I

    .line 18
    .line 19
    invoke-static {v0, p1, p2, v1}, Lcom/meishu/sdk/meishu_ad/view/player/c;->a(ZLandroid/media/MediaPlayer;II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$b;->b:[Z

    .line 26
    .line 27
    aput-boolean v2, p1, v2

    .line 28
    .line 29
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/player/a$b$a;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/player/a$b$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a$b;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
