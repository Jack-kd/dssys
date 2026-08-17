.class public final synthetic Lcom/sigmob/sdk/videoAd/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/views/o$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/o;->a:Lcom/sigmob/sdk/videoAd/j;

    return-void
.end method


# virtual methods
.method public final onWebViewClick(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/o;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/videoAd/j;->b0(Lcom/sigmob/sdk/videoAd/j;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method
