.class public Lcom/meishu/sdk/platform/ms/recycler/l$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/recycler/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l$d;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/u;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/l$d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l$d;Lcom/meishu/sdk/platform/ms/recycler/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$a;->a:Lcom/meishu/sdk/platform/ms/recycler/u;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;FFJFFI)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$a;->b:Lcom/meishu/sdk/platform/ms/recycler/l$d;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/meishu/sdk/platform/ms/recycler/l$d;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/meishu/sdk/platform/ms/recycler/l$d;->a:Landroid/view/ViewGroup;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$d$a;->a:Lcom/meishu/sdk/platform/ms/recycler/u;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/recycler/u;->a()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/lit8 v9, p1, 0x1

    .line 14
    .line 15
    move v2, p2

    .line 16
    move v3, p3

    .line 17
    move-wide v4, p4

    .line 18
    move/from16 v6, p6

    .line 19
    .line 20
    move/from16 v7, p7

    .line 21
    .line 22
    move/from16 v8, p8

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/view/ViewGroup;FFJFFIZ)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
