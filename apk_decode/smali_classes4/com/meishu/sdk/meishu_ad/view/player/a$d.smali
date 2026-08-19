.class public Lcom/meishu/sdk/meishu_ad/view/player/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;


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
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->d:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->a:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->b:[Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->c:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->b:[Z

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
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->c:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->d:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 18
    .line 19
    iget v3, v3, Lcom/meishu/sdk/meishu_ad/view/player/a;->b:I

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v3}, Lcom/meishu/sdk/meishu_ad/view/player/c;->a(ZLandroid/media/MediaPlayer;II)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->b:[Z

    .line 28
    .line 29
    aput-boolean v2, p1, v2

    .line 30
    .line 31
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/player/a$d$a;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/player/a$d$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a$d;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
