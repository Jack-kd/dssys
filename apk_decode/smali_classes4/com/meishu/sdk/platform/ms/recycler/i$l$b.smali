.class public Lcom/meishu/sdk/platform/ms/recycler/i$l$b;
.super Lcom/meishu/sdk/platform/ms/recycler/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i$l;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic n:Lcom/meishu/sdk/platform/ms/recycler/i$l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i$l;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l$b;->n:Lcom/meishu/sdk/platform/ms/recycler/i$l;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/meishu/sdk/platform/ms/recycler/r;-><init>(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(FFJFFI)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l$b;->n:Lcom/meishu/sdk/platform/ms/recycler/i$l;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i$l;->a:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 6
    .line 7
    move v3, p1

    .line 8
    move v4, p2

    .line 9
    move-wide v5, p3

    .line 10
    move v7, p5

    .line 11
    move/from16 v8, p6

    .line 12
    .line 13
    move/from16 v9, p7

    .line 14
    .line 15
    invoke-virtual/range {v1 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
