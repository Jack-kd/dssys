.class public Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$b;
.super Lcom/meishu/sdk/core/safe/e;
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
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$b;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$b;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->d:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
