.class Lcom/meishu/sdk/core/view/FeedAdOverlayView$3;
.super Lcom/meishu/sdk/core/safe/l;
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
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$3;->this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$3;->val$contentView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$3;->this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$3;->val$contentView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->access$000(Lcom/meishu/sdk/core/view/FeedAdOverlayView;Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
