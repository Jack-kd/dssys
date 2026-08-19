.class public final synthetic Lcom/fl/saas/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/K0;

.field public final synthetic b:Lcom/fl/saas/j;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/r1;->a:Lcom/fl/saas/K0;

    iput-object p2, p0, Lcom/fl/saas/r1;->b:Lcom/fl/saas/j;

    return-void
.end method


# virtual methods
.method public final onShake(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/r1;->a:Lcom/fl/saas/K0;

    iget-object v1, p0, Lcom/fl/saas/r1;->b:Lcom/fl/saas/j;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/fl/saas/K0;->v(Lcom/fl/saas/K0;Lcom/fl/saas/j;III)V

    return-void
.end method
