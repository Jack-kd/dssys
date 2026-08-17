.class Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->access$000(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/fl/saas/a0;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->access$100(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->access$100(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
