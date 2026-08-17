.class public final synthetic Lcom/meishu/sdk/core/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/b;->a:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    return-void
.end method


# virtual methods
.method public final onInvalid(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/b;->a:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->b(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Ljava/lang/String;)V

    return-void
.end method
