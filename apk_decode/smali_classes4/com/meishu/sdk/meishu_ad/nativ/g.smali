.class public Lcom/meishu/sdk/meishu_ad/nativ/g;
.super Lcom/meishu/sdk/core/safe/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    const/16 v1, 0x2bd

    .line 12
    .line 13
    if-eq p2, v1, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x2be

    .line 16
    .line 17
    if-eq p2, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 21
    .line 22
    sget v1, Lcom/meishu/sdk/R$id;->ms_progress_loading:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "MediaPlayer.MEDIA_INFO_BUFFERING_END"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 46
    .line 47
    sget v1, Lcom/meishu/sdk/R$id;->ms_progress_loading:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "MediaPlayer.MEDIA_INFO_BUFFERING_START"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->D:Landroid/media/MediaPlayer$OnInfoListener;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    return v2
.end method
