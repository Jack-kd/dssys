.class public Lcom/meishu/sdk/platform/ms/recycler/i$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/app/Activity;Lcom/meishu/sdk/core/view/TouchAdContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/t$a;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/platform/ms/recycler/t$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$k;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$k;->a:Lcom/meishu/sdk/platform/ms/recycler/t$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$k;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$k;->a:Lcom/meishu/sdk/platform/ms/recycler/t$a;

    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/platform/ms/recycler/t;->a(Ljava/lang/String;Landroid/view/MotionEvent;Lcom/meishu/sdk/platform/ms/recycler/t$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method
