.class Lcom/meishu/sdk/core/view/FeedAdOverlayManager$2;
.super Lcom/meishu/sdk/core/service/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/view/FeedAdOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$2;->this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/service/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$2;->this$0:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1, v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->access$000(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAppStateUpdate(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
