.class public final synthetic Lcom/fl/saas/adx/util/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:[J

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>([JILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/util/s;->b:[J

    iput p2, p0, Lcom/fl/saas/adx/util/s;->c:I

    iput-object p3, p0, Lcom/fl/saas/adx/util/s;->d:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/util/s;->b:[J

    iget v1, p0, Lcom/fl/saas/adx/util/s;->c:I

    iget-object v2, p0, Lcom/fl/saas/adx/util/s;->d:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, p1}, Lcom/fl/saas/adx/util/ViewHelper;->a([JILandroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
