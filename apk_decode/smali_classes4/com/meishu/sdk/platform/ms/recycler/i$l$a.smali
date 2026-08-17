.class public Lcom/meishu/sdk/platform/ms/recycler/i$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/recycler/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i$l;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/i$l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l$a;->a:Lcom/meishu/sdk/platform/ms/recycler/i$l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;FFJFFI)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$l$a;->a:Lcom/meishu/sdk/platform/ms/recycler/i$l;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/meishu/sdk/platform/ms/recycler/i$l;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/meishu/sdk/platform/ms/recycler/i$l;->a:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 6
    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move-wide v4, p4

    .line 10
    move v6, p6

    .line 11
    move/from16 v7, p7

    .line 12
    .line 13
    move/from16 v8, p8

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v8}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
