.class public final synthetic Lcom/meishu/sdk/core/utils/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/p0$a;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/p0$a;

.field public final synthetic c:Lcom/meishu/sdk/platform/ms/c;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lcom/meishu/sdk/core/ad/AdSlot;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/meishu/sdk/core/utils/p0$a;Lcom/meishu/sdk/platform/ms/c;ZZZLandroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/utils/A;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/meishu/sdk/core/utils/A;->b:Lcom/meishu/sdk/core/utils/p0$a;

    iput-object p3, p0, Lcom/meishu/sdk/core/utils/A;->c:Lcom/meishu/sdk/platform/ms/c;

    iput-boolean p4, p0, Lcom/meishu/sdk/core/utils/A;->d:Z

    iput-boolean p5, p0, Lcom/meishu/sdk/core/utils/A;->e:Z

    iput-boolean p6, p0, Lcom/meishu/sdk/core/utils/A;->f:Z

    iput-object p7, p0, Lcom/meishu/sdk/core/utils/A;->g:Landroid/content/Context;

    iput-object p8, p0, Lcom/meishu/sdk/core/utils/A;->h:Lcom/meishu/sdk/core/ad/AdSlot;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/A;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/meishu/sdk/core/utils/A;->b:Lcom/meishu/sdk/core/utils/p0$a;

    iget-object v2, p0, Lcom/meishu/sdk/core/utils/A;->c:Lcom/meishu/sdk/platform/ms/c;

    iget-boolean v3, p0, Lcom/meishu/sdk/core/utils/A;->d:Z

    iget-boolean v4, p0, Lcom/meishu/sdk/core/utils/A;->e:Z

    iget-boolean v5, p0, Lcom/meishu/sdk/core/utils/A;->f:Z

    iget-object v6, p0, Lcom/meishu/sdk/core/utils/A;->g:Landroid/content/Context;

    iget-object v7, p0, Lcom/meishu/sdk/core/utils/A;->h:Lcom/meishu/sdk/core/ad/AdSlot;

    move v8, p1

    invoke-static/range {v0 .. v8}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/util/List;Lcom/meishu/sdk/core/utils/p0$a;Lcom/meishu/sdk/platform/ms/c;ZZZLandroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V

    return-void
.end method
