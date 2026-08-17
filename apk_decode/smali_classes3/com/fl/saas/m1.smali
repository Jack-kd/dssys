.class public final synthetic Lcom/fl/saas/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/G0;


# instance fields
.field public final synthetic a:Lcom/fl/saas/J0$a;

.field public final synthetic b:Lcom/fl/saas/j;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/J0$a;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/m1;->a:Lcom/fl/saas/J0$a;

    iput-object p2, p0, Lcom/fl/saas/m1;->b:Lcom/fl/saas/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/m1;->a:Lcom/fl/saas/J0$a;

    iget-object v1, p0, Lcom/fl/saas/m1;->b:Lcom/fl/saas/j;

    invoke-static {v0, v1}, Lcom/fl/saas/J0$a;->a(Lcom/fl/saas/J0$a;Lcom/fl/saas/j;)V

    return-void
.end method
