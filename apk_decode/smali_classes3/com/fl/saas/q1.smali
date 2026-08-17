.class public final synthetic Lcom/fl/saas/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(IZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fl/saas/q1;->a:I

    iput-boolean p2, p0, Lcom/fl/saas/q1;->b:Z

    iput p3, p0, Lcom/fl/saas/q1;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fl/saas/q1;->a:I

    iget-boolean v1, p0, Lcom/fl/saas/q1;->b:Z

    iget v2, p0, Lcom/fl/saas/q1;->c:I

    check-cast p1, Lcom/fl/saas/j;

    invoke-static {v0, v1, v2, p1}, Lcom/fl/saas/K0;->q(IZILcom/fl/saas/j;)V

    return-void
.end method
