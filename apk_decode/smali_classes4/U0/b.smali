.class public final synthetic LU0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/recycler/t$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/i;

.field public final synthetic b:Lcom/meishu/sdk/core/view/TouchAdContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/TouchAdContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU0/b;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    iput-object p2, p0, LU0/b;->b:Lcom/meishu/sdk/core/view/TouchAdContainer;

    return-void
.end method


# virtual methods
.method public final a(FFJFFFI)V
    .locals 10

    .line 1
    iget-object v0, p0, LU0/b;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    iget-object v1, p0, LU0/b;->b:Lcom/meishu/sdk/core/view/TouchAdContainer;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/i;->b(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFFI)V

    return-void
.end method
