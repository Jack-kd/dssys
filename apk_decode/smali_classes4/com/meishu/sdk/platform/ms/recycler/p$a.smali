.class public Lcom/meishu/sdk/platform/ms/recycler/p$a;
.super Lcom/meishu/sdk/platform/ms/recycler/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/p;->a(Landroid/view/ViewGroup;ILcom/meishu/sdk/platform/ms/recycler/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic n:[Lcom/meishu/sdk/platform/ms/recycler/r;

.field public final synthetic o:Lcom/meishu/sdk/platform/ms/recycler/q;

.field public final synthetic p:Landroid/view/ViewGroup;

.field public final synthetic q:Lcom/meishu/sdk/platform/ms/recycler/p;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/p;Landroid/view/View;I[Lcom/meishu/sdk/platform/ms/recycler/r;Lcom/meishu/sdk/platform/ms/recycler/q;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->q:Lcom/meishu/sdk/platform/ms/recycler/p;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->n:[Lcom/meishu/sdk/platform/ms/recycler/r;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->o:Lcom/meishu/sdk/platform/ms/recycler/q;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->p:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lcom/meishu/sdk/platform/ms/recycler/r;-><init>(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(FFJFFI)V
    .locals 11

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->o:Lcom/meishu/sdk/platform/ms/recycler/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->q:Lcom/meishu/sdk/platform/ms/recycler/p;

    .line 6
    iget-boolean v0, v0, Lcom/meishu/sdk/platform/ms/recycler/p;->c:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->q:Lcom/meishu/sdk/platform/ms/recycler/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/p;->a(Lcom/meishu/sdk/platform/ms/recycler/p;Z)Z

    .line 8
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->o:Lcom/meishu/sdk/platform/ms/recycler/q;

    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->p:Landroid/view/ViewGroup;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lcom/meishu/sdk/platform/ms/recycler/q;->a(Landroid/view/ViewGroup;FFJFFI)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->q:Lcom/meishu/sdk/platform/ms/recycler/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/p;->a(Lcom/meishu/sdk/platform/ms/recycler/p;Z)Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$a;->n:[Lcom/meishu/sdk/platform/ms/recycler/r;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/ms/recycler/r;->b(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
