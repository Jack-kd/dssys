.class public final synthetic Lcom/fl/saas/adx/base/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/widget/VisibilityLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/widget/VisibilityLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/u;->b:Lcom/fl/saas/adx/base/widget/VisibilityLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/u;->b:Lcom/fl/saas/adx/base/widget/VisibilityLayout;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->b(Lcom/fl/saas/adx/base/widget/VisibilityLayout;)V

    return-void
.end method
