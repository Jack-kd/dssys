.class public final synthetic Lcom/meishu/sdk/core/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/a;->a:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    iput-object p2, p0, Lcom/meishu/sdk/core/view/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onOverlayClick(ZZLcom/meishu/sdk/core/view/TouchPoint;Lcom/meishu/sdk/core/view/TouchPoint;ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/a;->a:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    iget-object v1, p0, Lcom/meishu/sdk/core/view/a;->b:Landroid/view/View;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->a(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Landroid/view/View;ZZLcom/meishu/sdk/core/view/TouchPoint;Lcom/meishu/sdk/core/view/TouchPoint;ILjava/lang/String;)V

    return-void
.end method
