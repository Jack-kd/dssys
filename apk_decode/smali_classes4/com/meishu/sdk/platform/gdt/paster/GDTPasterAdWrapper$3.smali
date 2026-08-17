.class Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

.field public final synthetic val$imagePoster:Landroid/widget/ImageView;

.field public final synthetic val$mediaView:Lcom/qq/e/ads/nativ/MediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;Landroid/widget/ImageView;Lcom/qq/e/ads/nativ/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;->val$imagePoster:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;->val$mediaView:Lcom/qq/e/ads/nativ/MediaView;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;->val$imagePoster:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;->val$mediaView:Lcom/qq/e/ads/nativ/MediaView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
