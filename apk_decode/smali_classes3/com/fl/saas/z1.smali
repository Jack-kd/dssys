.class public final synthetic Lcom/fl/saas/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/O0;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/O0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/z1;->a:Lcom/fl/saas/O0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/z1;->a:Lcom/fl/saas/O0;

    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/fl/saas/O0;->g(Lcom/fl/saas/O0;Landroid/app/Activity;)V

    return-void
.end method
