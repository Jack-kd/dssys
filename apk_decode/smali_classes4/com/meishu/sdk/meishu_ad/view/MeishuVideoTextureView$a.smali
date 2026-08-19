.class public Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$a;
.super Lcom/meishu/sdk/core/safe/h;
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
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$a;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$a;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 5
    .line 6
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->c:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
