.class public Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$c;
.super Lcom/meishu/sdk/core/safe/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$c;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$c;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "video buffer: "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
