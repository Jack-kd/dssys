.class Lcom/meishu/sdk/core/view/FeedAdOverlayView$2;
.super Lcom/meishu/sdk/core/safe/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/view/FeedAdOverlayView;->attachToContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

.field public final synthetic val$contentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/view/FeedAdOverlayView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$2;->this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$2;->val$contentView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/i;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$2;->this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$2;->val$contentView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->access$000(Lcom/meishu/sdk/core/view/FeedAdOverlayView;Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
