.class public final synthetic Lcom/fl/saas/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/K0;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/K0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/o1;->b:Lcom/fl/saas/K0;

    iput-object p2, p0, Lcom/fl/saas/o1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/o1;->b:Lcom/fl/saas/K0;

    iget-object v1, p0, Lcom/fl/saas/o1;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/fl/saas/K0;->p(Lcom/fl/saas/K0;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
