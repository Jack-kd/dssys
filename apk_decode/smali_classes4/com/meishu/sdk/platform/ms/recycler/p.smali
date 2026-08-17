.class public Lcom/meishu/sdk/platform/ms/recycler/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/view/View;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->a:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->b:Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/recycler/p;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->c:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILcom/meishu/sdk/platform/ms/recycler/q;)V
    .locals 9

    const/4 v7, 0x1

    .line 2
    new-array v4, v7, [Lcom/meishu/sdk/platform/ms/recycler/r;

    const/4 v8, 0x0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/p$a;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v1, p0

    move-object v6, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/platform/ms/recycler/p$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/p;Landroid/view/View;I[Lcom/meishu/sdk/platform/ms/recycler/r;Lcom/meishu/sdk/platform/ms/recycler/q;Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v4

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v4

    goto :goto_1

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/p$b;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v1, p0

    move-object v5, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/meishu/sdk/platform/ms/recycler/p$b;-><init>(Lcom/meishu/sdk/platform/ms/recycler/p;Landroid/view/View;ILcom/meishu/sdk/platform/ms/recycler/q;Landroid/view/ViewGroup;)V

    aput-object v0, v6, v8

    .line 9
    iput-boolean v8, v0, Lcom/meishu/sdk/platform/ms/recycler/r;->c:Z

    .line 10
    iput-boolean v7, v0, Lcom/meishu/sdk/platform/ms/recycler/r;->d:Z

    .line 11
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/p;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
