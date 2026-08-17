.class Lcom/meishu/sdk/core/view/FeedAdOverlayManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->addOverlay(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

.field public final synthetic val$triggerAction:Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$1;->this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$1;->val$triggerAction:Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onOverlayAttached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$1;->val$triggerAction:Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;->onOverlayAttached()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onOverlayDetached()V
    .locals 0

    return-void
.end method
