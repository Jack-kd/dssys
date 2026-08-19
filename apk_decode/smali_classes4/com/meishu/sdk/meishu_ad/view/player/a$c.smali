.class public Lcom/meishu/sdk/meishu_ad/view/player/a$c;
.super Lcom/meishu/sdk/core/safe/f;
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
.field public final synthetic a:[Z

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/view/player/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/a;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$c;->b:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$c;->a:[Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onError: what:"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, "  extra:"

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "CacheMediaPlayerHelper"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$c;->a:[Z

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    aget-boolean p3, p1, p2

    .line 35
    .line 36
    if-nez p3, :cond_0

    .line 37
    .line 38
    aput-boolean p2, p1, p2

    .line 39
    .line 40
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/player/a$c$a;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/player/a$c$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/a$c;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    return p1
.end method
