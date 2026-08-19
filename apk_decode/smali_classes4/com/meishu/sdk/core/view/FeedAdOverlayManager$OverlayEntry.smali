.class Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/view/FeedAdOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayEntry"
.end annotation


# instance fields
.field public final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public adContainerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final ecpm:I

.field public final overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

.field public final posId:Ljava/lang/String;

.field public final triggerAction:Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;

.field public final uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/meishu/sdk/core/view/FeedAdOverlayView;Ljava/lang/String;Ljava/lang/String;ILcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->activityRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->posId:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->uniqueId:Ljava/lang/String;

    .line 23
    .line 24
    iput p6, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->ecpm:I

    .line 25
    .line 26
    iput-object p7, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->triggerAction:Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;

    .line 27
    .line 28
    return-void
.end method
