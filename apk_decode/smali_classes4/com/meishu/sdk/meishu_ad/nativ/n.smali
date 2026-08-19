.class public Lcom/meishu/sdk/meishu_ad/nativ/n;
.super Lcom/meishu/sdk/core/safe/f;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/n;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/n;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "MediaPlayer onError"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {p1, p3}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/n;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoError()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/n;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->E:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-interface {p1, v1, p2}, Lcom/meishu/sdk/meishu_ad/m0;->onAdRenderFail(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/n;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1
.end method
