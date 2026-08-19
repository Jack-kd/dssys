.class public final synthetic Lcom/fl/saas/adx/base/inner/spread/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/B;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/i;->a:Lcom/fl/saas/B;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/i;->a:Lcom/fl/saas/B;

    invoke-static {v0, p1, p2, p3}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->a(Lcom/fl/saas/B;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
