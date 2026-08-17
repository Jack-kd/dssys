.class public Lcom/meishu/sdk/platform/ms/recycler/l$d$b;
.super Lcom/meishu/sdk/platform/ms/recycler/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l$d;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic n:Lcom/meishu/sdk/platform/ms/recycler/l$d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l$d;Landroid/view/View;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$b;->n:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/meishu/sdk/platform/ms/recycler/r;-><init>(Landroid/view/View;ILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(FFJFFI)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$b;->n:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/l$d;->a:Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v10, 0x1

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-wide v5, p3

    .line 11
    move/from16 v7, p5

    .line 12
    .line 13
    move/from16 v8, p6

    .line 14
    .line 15
    move/from16 v9, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v10}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/view/ViewGroup;FFJFFIZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
