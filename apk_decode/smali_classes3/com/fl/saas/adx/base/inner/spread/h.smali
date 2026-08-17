.class public final synthetic Lcom/fl/saas/adx/base/inner/spread/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/h;->a:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    return-void
.end method


# virtual methods
.method public final isIntercept(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/h;->a:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {v0, p1, p2}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->c(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;FF)Z

    move-result p1

    return p1
.end method
