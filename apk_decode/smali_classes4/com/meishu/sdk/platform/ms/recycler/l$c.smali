.class public Lcom/meishu/sdk/platform/ms/recycler/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/t$a;

.field public final synthetic c:Lcom/meishu/sdk/platform/ms/recycler/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l;Ljava/util/List;Lcom/meishu/sdk/platform/ms/recycler/t$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$c;->c:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$c;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/l$c;->b:Lcom/meishu/sdk/platform/ms/recycler/t$a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    move v0, p1

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$c;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$c;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/t1;->a(Landroid/view/View;FF)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$c;->c:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/recycler/l;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$c;->b:Lcom/meishu/sdk/platform/ms/recycler/t$a;

    .line 46
    .line 47
    invoke-static {v1, p2, v2}, Lcom/meishu/sdk/platform/ms/recycler/t;->a(Ljava/lang/String;Landroid/view/MotionEvent;Lcom/meishu/sdk/platform/ms/recycler/t$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p2

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return p1
.end method
