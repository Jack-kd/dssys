.class public Lcom/meishu/sdk/meishu_ad/view/player/a$a$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/player/a$a;->a(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/player/a$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/a$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    const-string v0, "cache video success:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/a$a;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->e:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 14
    .line 15
    iget-wide v3, v3, Lcom/meishu/sdk/meishu_ad/view/player/a;->c:J

    .line 16
    .line 17
    sub-long/2addr v1, v3

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "CacheMediaPlayerHelper"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$a$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/a$a;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->e:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/view/player/a;->d:Lcom/meishu/sdk/meishu_ad/view/player/c$a;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/view/player/a;->e:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/a$a;->c:Landroid/media/MediaPlayer;

    .line 39
    .line 40
    check-cast v2, Lcom/meishu/sdk/core/bquery/b;

    .line 41
    .line 42
    invoke-virtual {v2, v1, v0}, Lcom/meishu/sdk/core/bquery/b;->a(Ljava/lang/String;Landroid/media/MediaPlayer;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
