.class public Lcom/meishu/sdk/platform/ms/recycler/p$b;
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
.field public final synthetic n:Lcom/meishu/sdk/platform/ms/recycler/q;

.field public final synthetic o:Landroid/view/ViewGroup;

.field public final synthetic p:Lcom/meishu/sdk/platform/ms/recycler/p;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/p;Landroid/view/View;ILcom/meishu/sdk/platform/ms/recycler/q;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->p:Lcom/meishu/sdk/platform/ms/recycler/p;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->n:Lcom/meishu/sdk/platform/ms/recycler/q;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->o:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/meishu/sdk/platform/ms/recycler/r;-><init>(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(FFJFFI)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->n:Lcom/meishu/sdk/platform/ms/recycler/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->p:Lcom/meishu/sdk/platform/ms/recycler/p;

    .line 3
    iget-boolean v0, v0, Lcom/meishu/sdk/platform/ms/recycler/p;->c:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->p:Lcom/meishu/sdk/platform/ms/recycler/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/p;->a(Lcom/meishu/sdk/platform/ms/recycler/p;Z)Z

    .line 5
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->n:Lcom/meishu/sdk/platform/ms/recycler/q;

    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->o:Landroid/view/ViewGroup;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/p$b;->p:Lcom/meishu/sdk/platform/ms/recycler/p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/ms/recycler/p;->a(Lcom/meishu/sdk/platform/ms/recycler/p;Z)Z

    return-void
.end method
