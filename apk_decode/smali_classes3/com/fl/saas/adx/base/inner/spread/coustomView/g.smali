.class public final synthetic Lcom/fl/saas/adx/base/inner/spread/coustomView/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;

.field public final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/g;->b:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/g;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/g;->b:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->a(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
