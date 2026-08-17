.class public final synthetic Lcom/fl/saas/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/fl/saas/y1;->a:Z

    iput p2, p0, Lcom/fl/saas/y1;->b:I

    iput p3, p0, Lcom/fl/saas/y1;->c:I

    iput p4, p0, Lcom/fl/saas/y1;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/y1;->a:Z

    iget v1, p0, Lcom/fl/saas/y1;->b:I

    iget v2, p0, Lcom/fl/saas/y1;->c:I

    iget v3, p0, Lcom/fl/saas/y1;->d:I

    check-cast p1, Lcom/fl/saas/K0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/fl/saas/L0;->n(ZIIILcom/fl/saas/K0;)V

    return-void
.end method
